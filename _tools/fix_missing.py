# -*- coding: utf-8 -*-
import json
import shutil
from pathlib import Path

RP = Path(r"d:\minecraft\.minecraft\versions\1.21.11-Fabric 0.18.2\resourcepacks\64x 矿物标记")
FAITH = Path(r"d:\minecraft\.minecraft\versions\1.21.11-Fabric 0.18.2\resourcepacks\Faithful 64x - December 2025 Release")
DP = Path(__file__).resolve().parents[1]
FTI = FAITH / "assets/minecraft/textures/item"
TEX = RP / "assets/minecraft/textures/item"
MDL = RP / "assets/minecraft/models/item"
ITM = RP / "assets/minecraft/items"


def copy(src: Path, dest: Path):
    dest.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(src, dest)


def model(rel: str, parent: str, tex: str):
    p = MDL / f"{rel}.json"
    p.parent.mkdir(parents=True, exist_ok=True)
    p.write_text(json.dumps({
        "parent": parent,
        "textures": {"layer0": f"minecraft:item/{rel}" if not tex.startswith("minecraft:") else tex.replace("minecraft:item/", "minecraft:item/")},
    }, indent=2) + "\n", encoding="utf-8")
    # fix: layer0 should be minecraft:item/<rel>
    p.write_text(json.dumps({
        "parent": parent,
        "textures": {"layer0": f"minecraft:item/{rel}"},
    }, indent=2) + "\n", encoding="utf-8")


def add_entry(item_json: Path, threshold: int, model_path: str):
    data = json.loads(item_json.read_text(encoding="utf-8"))
    entries = data["model"]["entries"]
    if any(e.get("threshold") == threshold for e in entries):
        return
    entries.append({
        "threshold": threshold,
        "model": {"type": "minecraft:model", "model": model_path},
    })
    entries.sort(key=lambda e: e["threshold"])
    item_json.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def write_item(name: str, entries: list, fallback_model: dict | None = None):
    obj = {
        "model": {
            "type": "minecraft:range_dispatch",
            "property": "minecraft:custom_model_data",
            "entries": [
                {"threshold": t, "model": {"type": "minecraft:model", "model": m}}
                for t, m in entries
            ],
            "fallback": fallback_model or {"type": "minecraft:model", "model": f"minecraft:item/{name}"},
        }
    }
    (ITM / f"{name}.json").write_text(json.dumps(obj, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


# --- missing textures ---
copy(FTI / "compass_00.png", TEX / "prop/compass_1.png")
copy(FTI / "compass_00.png", TEX / "prop/compass_2.png")
copy(FTI / "recovery_compass_00.png", TEX / "prop/recovery_compass_1.png")

for rel, parent in [
    ("prop/compass_1", "minecraft:item/generated"),
    ("prop/compass_2", "minecraft:item/generated"),
    ("prop/recovery_compass_1", "minecraft:item/generated"),
    ("prop/gold_nugget_2", "minecraft:item/generated"),
    ("prop/gold_nugget_3", "minecraft:item/generated"),
    ("prop/golden_apple_1", "minecraft:item/generated"),
    ("prop/tropical_fish_1", "minecraft:item/generated"),
    ("prop/tropical_fish_2", "minecraft:item/generated"),
]:
    model(rel, parent, rel)

copy(FTI / "gold_nugget.png", TEX / "prop/gold_nugget_2.png")
copy(FTI / "gold_nugget.png", TEX / "prop/gold_nugget_3.png")
copy(FTI / "golden_apple.png", TEX / "prop/golden_apple_1.png")
copy(FTI / "tropical_fish.png", TEX / "prop/tropical_fish_1.png")
copy(FTI / "tropical_fish.png", TEX / "prop/tropical_fish_2.png")

# compass.json already has cmd 1; add 2
add_entry(ITM / "compass.json", 2, "item/prop/compass_2")
add_entry(ITM / "gold_nugget.json", 2, "item/prop/gold_nugget_2")
add_entry(ITM / "gold_nugget.json", 3, "item/prop/gold_nugget_3")
write_item("golden_apple", [(1, "item/prop/golden_apple_1")])
write_item("tropical_fish", [(1, "item/prop/tropical_fish_1"), (2, "item/prop/tropical_fish_2")])

# --- datapack CMD inserts ---
EXTRA = {
    "矿洞指南针": 2,
    "速食金苹果": 1,
    "小零食": 2,
    "小垃圾零食": 3,
    "热带鱼": 1,
    "虎纹鲨鱼": 2,
    "附魔 金苹果": 1,
}


def add_cmd_comp(comp: dict, cmd: int):
    if "custom_model_data" in comp or "minecraft:custom_model_data" in comp:
        comp.pop("minecraft:custom_model_data", None)
        comp["custom_model_data"] = {"floats": [cmd]}
        return
    new = {"custom_model_data": {"floats": [cmd]}}
    new.update(comp)
    comp.clear()
    comp.update(new)


def extract_name(comp: dict):
    for key in ("minecraft:custom_name", "custom_name", "minecraft:item_name", "item_name"):
        val = comp.get(key)
        if isinstance(val, dict) and val.get("translate") in EXTRA:
            return val["translate"]
    return None


def walk(obj) -> int:
    n = 0
    if isinstance(obj, dict):
        comps = obj.get("components")
        if isinstance(comps, dict):
            name = extract_name(comps)
            if name:
                add_cmd_comp(comps, EXTRA[name])
                n += 1
        for v in obj.values():
            n += walk(v)
    elif isinstance(obj, list):
        for v in obj:
            n += walk(v)
    return n


patched = 0
for fp in (DP / "data").rglob("*.json"):
    try:
        raw = fp.read_text(encoding="utf-8")
        data = json.loads(raw)
    except Exception:
        continue
    n = walk(data)
    if n:
        fp.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        patched += n
print("json extra patches", patched)

# mcfunction 矿洞指南针
needle = 'id:"compass",Slot:8b,count:2b,components:{'
repl = 'id:"compass",Slot:8b,count:2b,components:{custom_model_data:{floats:[2]},'
for rel in (
    "data/wallwar/function/system/start.mcfunction",
    "data/wallwar/function/boss_urf/start.mcfunction",
):
    fp = DP / rel
    t = fp.read_text(encoding="utf-8")
    if "custom_model_data:{floats:[2]}" not in t:
        fp.write_text(t.replace(needle, repl), encoding="utf-8")
        print("patched", rel)

# cmd_map append
mp = RP / "cmd_map.txt"
extra_lines = [
    "矿洞指南针\tcompass\tcompass\t2\titem/prop/compass_2\t",
    "速食金苹果\tgolden_apple\tgolden_apple\t1\titem/prop/golden_apple_1\t",
    "小零食\tgold_nugget\tgold_nugget\t2\titem/prop/gold_nugget_2\t",
    "小垃圾零食\tgold_nugget\tgold_nugget\t3\titem/prop/gold_nugget_3\t",
    "热带鱼\ttropical_fish\ttropical_fish\t1\titem/prop/tropical_fish_1\t",
    "虎纹鲨鱼\ttropical_fish\ttropical_fish\t2\titem/prop/tropical_fish_2\t",
    "附魔 金苹果\tplayer_head\tplayer_head\t1\tvanilla 3D (minecraft:player_head)\tblock/special 3D placeholder",
]
text = mp.read_text(encoding="utf-8")
for line in extra_lines:
    if line.split("\t")[0] not in text:
        text = text.rstrip() + "\n" + line + "\n"
mp.write_text(text, encoding="utf-8")
print("done")
