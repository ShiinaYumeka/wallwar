# -*- coding: utf-8 -*-
"""Generate wallwar custom_model_data resource pack files and patch datapack."""
from __future__ import annotations

import json
import re
import shutil
import zipfile
from collections import defaultdict
from pathlib import Path

DP = Path(__file__).resolve().parents[1]
RP = Path(r"d:\minecraft\.minecraft\versions\1.21.11-Fabric 0.18.2\resourcepacks\64x 矿物标记")
FAITH = Path(
    r"d:\minecraft\.minecraft\versions\1.21.11-Fabric 0.18.2\resourcepacks\Faithful 64x - December 2025 Release"
)
JAR = Path(r"d:\minecraft\.minecraft\versions\1.21.11-Fabric 0.18.2\1.21.11-Fabric 0.18.2.jar")

FORCE_CMD = {
    "杀戮": 1, "裂焱": 2, "霜烬": 3,
    "镇魂": 1, "逐影": 2,
    "因果": 1, "岩陨": 2,
    "溯流": 1, "燎原": 2,
    "海啸": 1, "穿光": 2,
    "霆契": 1, "漩枢": 2,
    "坠星": 1, "罡旋": 2,
    "Pickonimbus 2000": 1,
    "铁质重镐": 1,
    "稳健者的褒奖": 1,
    "掘石思洞客": 1,
    "贪婪者的褒奖": 2,
    "传说鱼竿": 1, "䲆竿": 2, "海洋钓竿": 3, "虚妄鱼竿": 4, "虚妄幻影": 4,
}
LOOKUP_OVERRIDE = {
    "杀戮": "diamond_sword", "裂焱": "diamond_sword", "霜烬": "diamond_sword",
    "因果": "diamond_axe", "岩陨": "diamond_axe",
    "镇魂": "diamond_spear", "逐影": "diamond_spear",
    "破舰者": "wooden_axe",
}
SLUGS = {
    "杀戮": "slaughter", "裂焱": "rift_flame", "霜烬": "frost_ember",
    "白楼": "haku", "楼观": "rokan", "圣剑": "excalibur",
    "骑士佩剑": "knight", "桃木剑": "peach", "狩猎小刀": "hunt",
    "钻石重剑": "heavy_diamond", "铁制重剑": "heavy_iron",
    "凋零仪式匕首": "wither_ritual", "凋灵骷髅佩剑": "wither_skeleton",
    "生离死别": "parting",
    "镇魂": "soulbind", "逐影": "shadowchase", "简易长矛": "simple", "破舰者": "shipbreaker",
    "因果": "karma", "岩陨": "meteor", "审判之日": "judgement", "终末之刻": "end_times",
    "异木收集者": "gold_collector", "祭祀伐木斧": "ritual", "伐木斧": "lumber",
    "重构": "rebuild", "公正": "justice", "深海矿工": "seaminer",
    "黑石蚀刻之证": "blackstone", "Leave Me Along!": "ohdream",
    "太虚量天": "taixu", "现代挖掘助手2000型": "dig2000", "撼岳掘尘": "hanyue",
    "寒潭掘玉": "hantan", "青丘玄镵": "qingqiu", "荒原耒木": "wasteland",
    "大师农耕锄": "master_hoe", "宗师农耕锄": "grandmaster_hoe",
    "专业农耕锄": "pro_hoe", "基础农耕锄": "basic_hoe",
    "园林镰刀": "garden_scythe", "林业镰刀": "forestry_scythe", "凋零灵魂权杖": "wither_staff",
    "溯流": "upstream", "燎原": "wildfire", "天界弓": "skybow",
    "海啸": "tsunami", "穿光": "piercelight", "重弩": "heavy_crossbow", "锋针": "needletip",
    "霆契": "thunderpact", "漩枢": "vortex", "三叉戟-游龙": "dragon", "三叉戟-天劫": "heaven",
    "坠星": "fallingstar", "罡旋": "windspin", "重锤": "heavy_mace",
    "传说鱼竿": "legend", "䲆竿": "puffer", "海洋钓竿": "sea", "虚妄鱼竿": "phantom", "虚妄幻影": "phantom",
    "裂网者": "webcutter",
    "阻献之触": "weather_touch",
}
KEEP_MODEL = {
    ("stone_pickaxe", 1): "item/pickaxe/silk",
    ("iron_pickaxe", 1): "item/pickaxe/iron",
    ("golden_pickaxe", 1): "item/pickaxe/stonk",
    ("golden_pickaxe", 2): "item/pickaxe/power",
    ("diamond_pickaxe", 1): "item/pickaxe/p2000",
}
KEEP_TEXTURE = {
    "item/pickaxe/silk", "item/pickaxe/iron", "item/pickaxe/stonk",
    "item/pickaxe/power", "item/pickaxe/p2000",
}
REUSE_TEXTURE = {
    "杀戮": ("item/command/sword", RP / "assets/minecraft/textures/item/command/sword.png"),
    "铁制重剑": ("item/sword/heavy_iron", RP / "assets/minecraft/textures/item/sword/heavy_iron_sword.png"),
}

WEAPON_BASES = {
    "wooden_sword", "stone_sword", "iron_sword", "golden_sword", "diamond_sword", "netherite_sword",
    "wooden_axe", "stone_axe", "iron_axe", "golden_axe", "diamond_axe", "netherite_axe",
    "wooden_pickaxe", "stone_pickaxe", "iron_pickaxe", "golden_pickaxe", "diamond_pickaxe", "netherite_pickaxe",
    "wooden_shovel", "stone_shovel", "iron_shovel", "golden_shovel", "diamond_shovel", "netherite_shovel",
    "wooden_hoe", "stone_hoe", "iron_hoe", "golden_hoe", "diamond_hoe", "netherite_hoe",
    "wooden_spear", "stone_spear", "iron_spear", "golden_spear", "diamond_spear", "netherite_spear", "copper_spear",
    "bow", "crossbow", "trident", "mace", "shears", "fishing_rod",
}
ARMOR_BASES = {
    "leather_helmet", "leather_chestplate", "leather_leggings", "leather_boots",
    "chainmail_helmet", "chainmail_chestplate", "chainmail_leggings", "chainmail_boots",
    "iron_helmet", "iron_chestplate", "iron_leggings", "iron_boots",
    "golden_helmet", "golden_chestplate", "golden_leggings", "golden_boots",
    "diamond_helmet", "diamond_chestplate", "diamond_leggings", "diamond_boots",
    "netherite_helmet", "netherite_chestplate", "netherite_leggings", "netherite_boots",
    "elytra", "turtle_helmet",
}
SKIP_BASES = ARMOR_BASES | {
    "shield", "potion", "splash_potion", "lingering_potion",
    "repeating_command_block",
}
SKIP_NAME_SUBSTR = ("套装", "礼盒", "组件")
SKIP_NAMES = {
    "存续", "战功", "伊甸之果", "队员选择器", "大师球-召回", "大师球（已满）", "精灵球（已满）",
    "被泡过的马铃薯", "木炭块", "强化挽具", "高速熔炉", "高速烟熏炉", "神祈", "工具包",
    "???头颅", "光灵箭",  # 光灵箭 is just named spectral arrow; still in throwable list, INCLUDE
}
# undo skip of 光灵箭
SKIP_NAMES.discard("光灵箭")

INCLUDE_PATH_PARTS = (
    "/_food/", "/mine/food/", "/farm/coco/", "/spawn/", "/build/xyz/", "/build/buff/",
    "/build/fireball/", "/_clock/", "/build/dig/",
)
INCLUDE_NAMES_EXTRA = {
    "阻献之触", "回魂灯", "猎人之眼", "复生之星", "坚毅之心", "渔者之心", "尘封凋零之号",
    "矿洞指南针", "追踪器", "仪式灵魂核心", "启封的秘籍", "启封的秘典", "古老的秘籍",
    "便携式临时粘合剂", "冰", "勠力", "引魂灯", "灵魂储囊", "远古学识", "追溯指针",
    "锻造模板", "灵魂容器", "修辞", "虚无之书", "兵者之书", "兵势之书", "矿之精华",
    "禁忌知识", "“小帮手”", "火焰冲击", "火球术", "炎爆术", "经验储囊", "光灵箭",
    "大师球", "精灵球", "仪式祭坛", "神降祭坛", "时钟", "农耕时钟", "幻梦时钟",
    "承枢台", "远古沙子", "远古沙砾", "扩散模块", "强化核心", "强化核心2",
    "队伍限定模块-红", "队伍限定模块-蓝", "队伍限定模块-绿", "队伍限定模块-黄", "队伍限定模块-黑",
    "头目之首", "潮涌核心",
}

NAME_RE = re.compile(
    r'"(?:minecraft:)?(?:custom_name|item_name)"\s*:\s*\{[^}]*?"translate"\s*:\s*"([^"]+)"',
    re.S,
)
NAME_RE2 = re.compile(r'"translate"\s*:\s*"([^"]+)"')
ITEM_MODEL_RE = re.compile(r'"item_model"\s*:\s*"([^"]+)"')


def nid(s: str) -> str:
    s = s.replace("minecraft:", "").strip()
    return s


def kind_of(base: str) -> str:
    if "sword" in base:
        return "sword"
    if "axe" in base and "pickaxe" not in base:
        return "axe"
    if "pickaxe" in base:
        return "pickaxe"
    if "shovel" in base:
        return "shovel"
    if "hoe" in base:
        return "hoe"
    if "spear" in base:
        return "spear"
    if base == "bow":
        return "bow"
    if base == "crossbow":
        return "crossbow"
    if base == "trident":
        return "trident"
    if base == "mace":
        return "mace"
    if base == "fishing_rod":
        return "rod"
    if base == "shears":
        return "shears"
    if "spawn_egg" in base or base in {"snowball", "sniffer_egg", "turtle_egg", "spectral_arrow", "experience_bottle"}:
        return "throw"
    if base in {"enchanted_book", "writable_book", "book"}:
        return "book"
    if any(x in base for x in ("glazed_terracotta", "concrete", "clock", "beacon", "anvil", "spawner", "conduit",
                                "spyglass", "lightning_rod", "target", "banner", "sand", "gravel", "hay", "wheat",
                                "repeater", "comparator", "obsidian", "heart_of_the_sea", "piglin_head", "player_head")):
        return "build"
    return "prop"


def in_scope(name: str, base: str, path: str) -> bool:
    if not name or name.startswith("%") or name.startswith("chat."):
        return False
    if name in SKIP_NAMES:
        return False
    if any(s in name for s in SKIP_NAME_SUBSTR):
        return False
    if name.startswith("一包") or name.startswith("一袋"):
        return False
    if base in SKIP_BASES:
        return False
    if base.endswith("_shulker_box") or base == "chest":
        return False
    if base in WEAPON_BASES:
        return True
    if name in INCLUDE_NAMES_EXTRA or name in FORCE_CMD or name in SLUGS:
        return True
    p = path.replace("\\", "/")
    if any(part in p for part in INCLUDE_PATH_PARTS):
        return True
    if name.startswith("唤灵-"):
        return True
    if name.endswith("核心") or "祭坛" in name:
        return True
    return False


def extract_name_from_components(comp: dict) -> str | None:
    for key in ("minecraft:custom_name", "custom_name", "minecraft:item_name", "item_name"):
        val = comp.get(key)
        if isinstance(val, dict) and "translate" in val:
            return val["translate"]
        if isinstance(val, dict) and "text" in val:
            return val["text"]
    return None


def walk_named(obj, current_id=None, item_model=None, out=None, path=""):
    if out is None:
        out = []
    if isinstance(obj, dict):
        iid = obj.get("id") or obj.get("name")
        if isinstance(iid, str) and not iid.startswith("#"):
            current_id = nid(iid)
        im = obj.get("item_model")
        if isinstance(im, str):
            item_model = nid(im)
        comps = obj.get("components")
        if isinstance(comps, dict):
            im2 = comps.get("item_model") or comps.get("minecraft:item_model")
            if isinstance(im2, str):
                item_model = nid(im2)
            name = extract_name_from_components(comps)
            if name and current_id:
                out.append({"name": name, "base": current_id, "item_model": item_model, "path": path})
        if obj.get("function") in ("minecraft:set_components", "set_components") and isinstance(obj.get("components"), dict):
            name = extract_name_from_components(obj["components"])
            if name and current_id:
                out.append({"name": name, "base": current_id, "item_model": item_model, "path": path})
        for v in obj.values():
            walk_named(v, current_id, item_model, out, path)
    elif isinstance(obj, list):
        for v in obj:
            walk_named(v, current_id, item_model, out, path)
    return out


def scan_datapack() -> list[dict]:
    found = []
    for folder in (DP / "data",):
        for fp in folder.rglob("*"):
            if fp.suffix == ".json":
                try:
                    data = json.loads(fp.read_text(encoding="utf-8"))
                except Exception:
                    continue
                found.extend(walk_named(data, path=str(fp)))
            elif fp.suffix == ".mcfunction":
                text = fp.read_text(encoding="utf-8")
                for m in re.finditer(
                    r'(?:give|item replace|container\.\d+ with)[^\n]*?(\w+)\[([^\n]*)',
                    text,
                ):
                    base = nid(m.group(1))
                    chunk = m.group(2)
                    nm = re.search(r'"translate":\s*"([^"]+)"', chunk) or re.search(r'translate:"([^"]+)"', chunk)
                    if not nm:
                        nm = re.search(r'text:"([^"]+)"', chunk)
                    if nm:
                        im = re.search(r'item_model(?:="|:)"?([^",\]]+)', chunk)
                        found.append({
                            "name": nm.group(1),
                            "base": base,
                            "item_model": nid(im.group(1)) if im else None,
                            "path": str(fp),
                        })
                for m in re.finditer(
                    r'id:"?([a-z0-9_]+)"?,[^}\n]*components:\{',
                    text,
                ):
                    # handled loosely by translate search below
                    pass
                for m in re.finditer(r'(?:custom_name|item_name):\{?\{?translate:"([^"]+)"', text):
                    # snbt without quotes around translate key already covered
                    pass
                for m in re.finditer(r'translate:"([^"]+)"', text):
                    name = m.group(1)
                    # try to find nearest id before this
                    before = text[max(0, m.start() - 400):m.start()]
                    idm = list(re.finditer(r'\bid:"?([a-z0-9_:/]+)"?', before))
                    if not idm:
                        idm = list(re.finditer(r'\b(compass|diamond_sword|stone_sword|iron_pickaxe|sniffer_egg|yellow_bundle)\b', before))
                    base = nid(idm[-1].group(1)) if idm else ""
                    if name and base:
                        found.append({"name": name, "base": base, "item_model": None, "path": str(fp)})
    # dedupe by name+base
    uniq = {}
    for e in found:
        key = (e["name"], e["base"])
        if key not in uniq:
            uniq[key] = e
        elif e.get("item_model") and not uniq[key].get("item_model"):
            uniq[key] = e
    return list(uniq.values())


def assign(entries: list[dict]) -> dict:
    """Return map name -> record (if same name multiple bases, name+base)."""
    scoped = [e for e in entries if in_scope(e["name"], e["base"], e["path"])]
    for e in scoped:
        e["lookup"] = LOOKUP_OVERRIDE.get(e["name"]) or (nid(e["item_model"]) if e.get("item_model") else e["base"])
        e["kind"] = kind_of(e["lookup"] if e["name"] in LOOKUP_OVERRIDE else e["base"])
        if e["name"] in LOOKUP_OVERRIDE:
            e["kind"] = kind_of(e["lookup"])
            if e["name"] == "破舰者":
                e["kind"] = "axe"
    groups = defaultdict(list)
    for e in scoped:
        groups[e["lookup"]].append(e)
    records = {}
    for lookup, ents in groups.items():
        # unique by name within group
        by_name = {}
        for e in ents:
            by_name[e["name"]] = e
        ents = list(by_name.values())
        used = set()
        for e in ents:
            if e["name"] in FORCE_CMD:
                e["cmd"] = FORCE_CMD[e["name"]]
                used.add(e["cmd"])
        n = 1
        for e in ents:
            if "cmd" not in e:
                while n in used:
                    n += 1
                e["cmd"] = n
                used.add(n)
                n += 1
        for e in ents:
            slug = SLUGS.get(e["name"])
            if not slug:
                slug = f"{e['lookup']}_{e['cmd']}"
            keep = KEEP_MODEL.get((e["lookup"], e["cmd"]))
            if keep:
                e["model"] = keep
            elif e["name"] in REUSE_TEXTURE:
                e["model"] = REUSE_TEXTURE[e["name"]][0]
            else:
                e["model"] = f"item/{e['kind']}/{slug}"
            records[(e["name"], e["base"])] = e
            records[e["name"]] = e  # last wins for name-only lookup
    return records, groups


def load_vanilla_item(name: str) -> dict | None:
    with zipfile.ZipFile(JAR) as z:
        p = f"assets/minecraft/items/{name}.json"
        if p in z.namelist():
            return json.loads(z.read(p).decode("utf-8"))
    return None


def vanilla_fallback(item: str) -> dict:
    v = load_vanilla_item(item)
    if v and "model" in v:
        return v["model"]
    return {"type": "minecraft:model", "model": f"minecraft:item/{item}"}


def is_blockish_fallback(fallback: dict) -> bool:
    """Vanilla inventory already uses a 3D block or special (head/conduit) model."""
    if not isinstance(fallback, dict):
        return False
    t = fallback.get("type", "")
    if t == "minecraft:special":
        return True
    if t == "minecraft:model":
        m = fallback.get("model", "")
        return isinstance(m, str) and m.startswith("minecraft:block/")
    return False


def fallback_model_label(fallback: dict) -> str:
    if fallback.get("type") == "minecraft:special":
        inner = fallback.get("model") or {}
        kind = inner.get("kind") or inner.get("type", "special")
        return f"vanilla 3D ({kind})"
    return fallback.get("model", "")


def extra_vanilla_keys(item: str) -> dict:
    v = load_vanilla_item(item)
    if not v:
        return {}
    return {k: val for k, val in v.items() if k != "model"}


def model_json(parent: str, texture: str) -> dict:
    return {"parent": parent, "textures": {"layer0": texture}}


def bow_tree(prefix: str) -> dict:
    return {
        "type": "minecraft:condition",
        "property": "minecraft:using_item",
        "on_false": {"type": "minecraft:model", "model": f"item/bow/{prefix}"},
        "on_true": {
            "type": "minecraft:range_dispatch",
            "property": "minecraft:use_duration",
            "scale": 0.05,
            "entries": [
                {"threshold": 0.65, "model": {"type": "minecraft:model", "model": f"item/bow/{prefix}_pulling_1"}},
                {"threshold": 0.9, "model": {"type": "minecraft:model", "model": f"item/bow/{prefix}_pulling_2"}},
            ],
            "fallback": {"type": "minecraft:model", "model": f"item/bow/{prefix}_pulling_0"},
        },
    }


def rod_tree(prefix: str) -> dict:
    return {
        "type": "minecraft:condition",
        "property": "minecraft:fishing_rod/cast",
        "on_false": {"type": "minecraft:model", "model": f"item/rod/{prefix}"},
        "on_true": {"type": "minecraft:model", "model": f"item/rod/{prefix}_cast"},
    }


def crossbow_tree(prefix: str) -> dict:
    return {
        "type": "minecraft:select",
        "property": "minecraft:charge_type",
        "cases": [
            {"when": "arrow", "model": {"type": "minecraft:model", "model": f"item/crossbow/{prefix}_arrow"}},
            {"when": "rocket", "model": {"type": "minecraft:model", "model": f"item/crossbow/{prefix}_firework"}},
        ],
        "fallback": {
            "type": "minecraft:condition",
            "property": "minecraft:using_item",
            "on_false": {"type": "minecraft:model", "model": f"item/crossbow/{prefix}"},
            "on_true": {
                "type": "minecraft:range_dispatch",
                "property": "minecraft:crossbow/pull",
                "entries": [
                    {"threshold": 0.58, "model": {"type": "minecraft:model", "model": f"item/crossbow/{prefix}_pulling_1"}},
                    {"threshold": 1.0, "model": {"type": "minecraft:model", "model": f"item/crossbow/{prefix}_pulling_2"}},
                ],
                "fallback": {"type": "minecraft:model", "model": f"item/crossbow/{prefix}_pulling_0"},
            },
        },
    }


def gui3d_tree(gui_model: str, in_hand: str, special: str | None = None) -> dict:
    gui = {"type": "minecraft:model", "model": gui_model}
    if special == "trident":
        fallback = {
            "type": "minecraft:condition",
            "property": "minecraft:using_item",
            "on_false": {
                "type": "minecraft:special",
                "base": "minecraft:item/trident_in_hand",
                "model": {"type": "minecraft:trident"},
            },
            "on_true": {
                "type": "minecraft:special",
                "base": "minecraft:item/trident_throwing",
                "model": {"type": "minecraft:trident"},
            },
        }
    else:
        fallback = {"type": "minecraft:model", "model": in_hand}
    return {
        "type": "minecraft:select",
        "property": "minecraft:display_context",
        "cases": [{"when": ["gui", "ground", "fixed", "on_shelf"], "model": gui}],
        "fallback": fallback,
    }


def simple_model_entry(model: str) -> dict:
    return {"type": "minecraft:model", "model": model}


def find_faithful_texture(base: str) -> Path | None:
    item = FAITH / "assets/minecraft/textures/item" / f"{base}.png"
    if item.exists():
        return item
    # clock
    c0 = FAITH / "assets/minecraft/textures/item/clock_00.png"
    if base == "clock" and c0.exists():
        return c0
    block_dir = FAITH / "assets/minecraft/textures/block"
    for cand in (
        f"{base}.png",
        f"{base}_side.png",
        f"{base}_front.png",
        f"{base}_top.png",
    ):
        p = block_dir / cand
        if p.exists():
            return p
    # spawn egg already item/
    if base.endswith("_banner"):
        p = item.with_name("white_banner.png") if not item.exists() else item
        wb = FAITH / "assets/minecraft/textures/item/white_banner.png"
        if wb.exists():
            return wb
    # piglin_head
    if "head" in base or "skull" in base:
        p = FAITH / "assets/minecraft/textures/item/player_head.png"
        if p.exists():
            return p
    return None


def write_json(path: Path, obj) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(obj, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def copy_tex(src: Path, dest: Path) -> None:
    dest.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(src, dest)


def generate_rp(groups: dict) -> None:
    items_dir = RP / "assets/minecraft/items"
    models_dir = RP / "assets/minecraft/models/item"
    tex_dir = RP / "assets/minecraft/textures/item"

    for lookup, ents in groups.items():
        by_name = {e["name"]: e for e in ents}
        ents = sorted(by_name.values(), key=lambda x: x["cmd"])
        entries = []
        kind = ents[0]["kind"]
        extra_root = extra_vanilla_keys(lookup)
        fallback = vanilla_fallback(lookup)

        for e in ents:
            slug = e["model"].split("/")[-1]
            tex_ns = f"minecraft:{e['model']}"
            keep = e["model"] in KEEP_TEXTURE or e["name"] in REUSE_TEXTURE

            if is_blockish_fallback(fallback):
                entries.append({"threshold": e["cmd"], "model": json.loads(json.dumps(fallback))})
                continue

            if kind == "bow":
                prefix = slug
                src = find_faithful_texture("bow")
                for suffix, vtex in (
                    ("", "bow.png"),
                    ("_pulling_0", "bow_pulling_0.png"),
                    ("_pulling_1", "bow_pulling_1.png"),
                    ("_pulling_2", "bow_pulling_2.png"),
                ):
                    parent = f"minecraft:item/bow{suffix}" if suffix else "minecraft:item/bow"
                    tname = f"item/bow/{prefix}{suffix}"
                    write_json(models_dir / "bow" / f"{prefix}{suffix}.json", model_json(parent, f"minecraft:{tname}"))
                    srcp = FAITH / "assets/minecraft/textures/item" / vtex
                    if srcp.exists():
                        copy_tex(srcp, tex_dir / "bow" / f"{prefix}{suffix}.png")
                entries.append({"threshold": e["cmd"], "model": bow_tree(prefix)})
                continue

            if kind == "rod":
                prefix = slug
                for suffix, vtex, parent in (
                    ("", "fishing_rod.png", "minecraft:item/fishing_rod"),
                    ("_cast", "fishing_rod_cast.png", "minecraft:item/fishing_rod_cast"),
                ):
                    tname = f"item/rod/{prefix}{suffix}"
                    write_json(models_dir / "rod" / f"{prefix}{suffix}.json", model_json(parent, f"minecraft:{tname}"))
                    srcp = FAITH / "assets/minecraft/textures/item" / vtex
                    if srcp.exists():
                        copy_tex(srcp, tex_dir / "rod" / f"{prefix}{suffix}.png")
                entries.append({"threshold": e["cmd"], "model": rod_tree(prefix)})
                continue

            if kind == "crossbow":
                prefix = slug
                mapping = [
                    ("", "crossbow_standby.png", "minecraft:item/crossbow"),
                    ("_pulling_0", "crossbow_pulling_0.png", "minecraft:item/crossbow_pulling_0"),
                    ("_pulling_1", "crossbow_pulling_1.png", "minecraft:item/crossbow_pulling_1"),
                    ("_pulling_2", "crossbow_pulling_2.png", "minecraft:item/crossbow_pulling_2"),
                    ("_arrow", "crossbow_arrow.png", "minecraft:item/crossbow_arrow"),
                    ("_firework", "crossbow_firework.png", "minecraft:item/crossbow_firework"),
                ]
                for suffix, vtex, parent in mapping:
                    tname = f"item/crossbow/{prefix}{suffix}"
                    write_json(models_dir / "crossbow" / f"{prefix}{suffix}.json", model_json(parent, f"minecraft:{tname}"))
                    srcp = FAITH / "assets/minecraft/textures/item" / vtex
                    if srcp.exists():
                        copy_tex(srcp, tex_dir / "crossbow" / f"{prefix}{suffix}.png")
                entries.append({"threshold": e["cmd"], "model": crossbow_tree(prefix)})
                continue

            if kind == "trident":
                if not keep:
                    src = find_faithful_texture("trident")
                    write_json(models_dir / "trident" / f"{slug}.json", model_json("minecraft:item/generated", tex_ns))
                    if src:
                        copy_tex(src, RP / "assets/minecraft/textures" / f"{e['model']}.png")
                entries.append({
                    "threshold": e["cmd"],
                    "model": gui3d_tree(e["model"], "minecraft:item/trident_in_hand", special="trident"),
                })
                continue

            if kind == "spear":
                if not keep:
                    src = find_faithful_texture(e["lookup"])
                    write_json(models_dir.joinpath(*e["model"].split("/")[1:]).with_suffix(".json"),
                               model_json("minecraft:item/generated", tex_ns))
                    if src:
                        dest = RP / "assets/minecraft/textures" / f"{e['model']}.png"
                        copy_tex(src, dest)
                in_hand = f"minecraft:item/{e['lookup']}_in_hand"
                entries.append({"threshold": e["cmd"], "model": gui3d_tree(e["model"], in_hand)})
                continue

            # simple 2d
            if e["model"] in KEEP_TEXTURE:
                entries.append({"threshold": e["cmd"], "model": simple_model_entry(e["model"])})
                continue

            parent = "minecraft:item/handheld"
            if kind == "mace":
                parent = "minecraft:item/handheld_mace"
            elif kind not in {"sword", "axe", "pickaxe", "shovel", "hoe", "shears"}:
                parent = "minecraft:item/generated"

            rel = Path(*e["model"].split("/"))  # item/sword/haku
            # models live under models/item/... so drop leading 'item'
            parts = e["model"].split("/")
            model_rel = Path(*parts[1:]).with_suffix(".json") if parts[0] == "item" else Path(*parts).with_suffix(".json")
            if e["name"] not in REUSE_TEXTURE:
                write_json(models_dir / model_rel, model_json(parent, tex_ns))
                src = None
                if e["name"] in REUSE_TEXTURE:
                    src = REUSE_TEXTURE[e["name"]][1]
                else:
                    src = find_faithful_texture(e["lookup"] if e["name"] not in LOOKUP_OVERRIDE else e["lookup"])
                    if src is None:
                        src = find_faithful_texture(e["base"])
                dest = tex_dir.joinpath(*parts[1:]).with_suffix(".png") if parts[0] == "item" else RP / "assets/minecraft/textures" / f"{e['model']}.png"
                if src and src.exists():
                    copy_tex(src, dest)
                else:
                    print("MISSING TEX", e["name"], e["lookup"], e["base"])
            else:
                # reuse existing png, still need model json unless already there
                mp = models_dir / model_rel
                if not mp.exists():
                    write_json(mp, model_json(parent, tex_ns))
            entries.append({"threshold": e["cmd"], "model": simple_model_entry(e["model"])})

        item_def = {
            "model": {
                "type": "minecraft:range_dispatch",
                "property": "minecraft:custom_model_data",
                "entries": entries,
                "fallback": fallback,
            }
        }
        item_def.update(extra_root)
        write_json(items_dir / f"{lookup}.json", item_def)


def add_cmd_to_components_obj(comp: dict, cmd: int) -> None:
    # put CMD first-ish
    if "custom_model_data" in comp or "minecraft:custom_model_data" in comp:
        comp.pop("minecraft:custom_model_data", None)
        comp["custom_model_data"] = {"floats": [cmd]}
        return
    # rebuild order
    new = {"custom_model_data": {"floats": [cmd]}}
    new.update(comp)
    comp.clear()
    comp.update(new)


def patch_obj(obj, recs_by_name, recs_full, current_id=None) -> int:
    n = 0
    if isinstance(obj, dict):
        iid = obj.get("id") or obj.get("name")
        if isinstance(iid, str) and not iid.startswith("#"):
            current_id = nid(iid)
        comps = obj.get("components")
        if isinstance(comps, dict):
            name = extract_name_from_components(comps)
            rec = recs_full.get((name, current_id)) if name else None
            if rec is None and name:
                rec = recs_by_name.get(name)
            if rec:
                add_cmd_to_components_obj(comps, rec["cmd"])
                n += 1
        for v in obj.values():
            n += patch_obj(v, recs_by_name, recs_full, current_id)
    elif isinstance(obj, list):
        for v in obj:
            n += patch_obj(v, recs_by_name, recs_full, current_id)
    return n


def patch_json_files(recs_by_name, recs_full) -> int:
    total = 0
    for fp in (DP / "data").rglob("*.json"):
        try:
            raw = fp.read_text(encoding="utf-8")
            data = json.loads(raw)
        except Exception:
            continue
        n = patch_obj(data, recs_by_name, recs_full)
        if n:
            fp.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
            total += n
    return total


def _match_bracket(text: str, open_idx: int, opener="[", closer="]") -> int:
    depth = 0
    i = open_idx
    while i < len(text):
        ch = text[i]
        if ch == opener:
            depth += 1
        elif ch == closer:
            depth -= 1
            if depth == 0:
                return i
        i += 1
    return -1


def insert_snbt_cmd(text: str, recs_by_name: dict) -> str:
    names_sorted = sorted(recs_by_name.keys(), key=len, reverse=True)
    out = []
    i = 0
    while True:
        m = re.search(r'(?:minecraft:)?([a-z0-9_]+)\[', text[i:])
        if not m:
            out.append(text[i:])
            break
        start = i + m.start()
        open_idx = i + m.end() - 1
        close_idx = _match_bracket(text, open_idx, "[", "]")
        if close_idx < 0:
            out.append(text[i:])
            break
        prefix = text[start:open_idx + 1]
        body = text[open_idx + 1:close_idx]
        item_token = text[start:open_idx]
        rec = None
        for name in names_sorted:
            if name in body and recs_by_name[name]["base"] in nid(item_token):
                rec = recs_by_name[name]
                break
        if rec is None:
            for name in names_sorted:
                if f'translate:"{name}"' in body or f'translate": "{name}"' in body or f'translate":"{name}"' in body:
                    rec = recs_by_name[name]
                    break
                if f'text:"{name}"' in body:
                    rec = recs_by_name[name]
                    break
        if rec and "custom_model_data" not in body:
            out.append(text[i:start])
            out.append(f"{item_token}[custom_model_data={{floats:[{rec['cmd']}]}},{body}]")
        else:
            out.append(text[i:close_idx + 1])
        i = close_idx + 1
    text = "".join(out)

    out = []
    i = 0
    key = "components:{"
    while True:
        pos = text.find(key, i)
        if pos < 0:
            out.append(text[i:])
            break
        open_idx = pos + len(key) - 1
        close_idx = _match_bracket(text, open_idx, "{", "}")
        if close_idx < 0:
            out.append(text[i:])
            break
        body = text[open_idx + 1:close_idx]
        rec = None
        for name in names_sorted:
            if f'translate:"{name}"' in body or f'"translate":"{name}"' in body or f'"translate": "{name}"' in body:
                rec = recs_by_name[name]
                break
        if rec and "custom_model_data" not in body:
            out.append(text[i:pos])
            out.append(f"components:{{custom_model_data:{{floats:[{rec['cmd']}]}},{body}}}")
        else:
            out.append(text[i:close_idx + 1])
        i = close_idx + 1
    return "".join(out)


def patch_mcfunctions(recs_by_name) -> int:
    n = 0
    for fp in (DP / "data").rglob("*.mcfunction"):
        raw = fp.read_text(encoding="utf-8")
        new = insert_snbt_cmd(raw, recs_by_name)
        if new != raw:
            fp.write_text(new, encoding="utf-8")
            n += 1
    return n


def write_map(groups):
    lines = [
        "# Wallwar custom_model_data map",
        "# name | base_item | lookup_item | cmd | model | notes",
        "",
    ]
    rows = []
    for ents in groups.values():
        by_name = {e["name"]: e for e in ents}
        for e in sorted(by_name.values(), key=lambda x: (x["lookup"], x["cmd"])):
            rows.append(e)
    rows.sort(key=lambda x: (x["lookup"], x["cmd"]))
    for e in rows:
        note = ""
        model = e["model"]
        fb = vanilla_fallback(e["lookup"])
        if is_blockish_fallback(fb):
            model = fallback_model_label(fb)
            note = "block/special 3D placeholder"
        if e["name"] in LOOKUP_OVERRIDE:
            note = "item_model redirect"
        if e["model"] in KEEP_TEXTURE:
            note = (note + "; existing texture").strip("; ")
        lines.append(f"{e['name']}\t{e['base']}\t{e['lookup']}\t{e['cmd']}\t{model}\t{note}")
    (RP / "cmd_map.txt").write_text("\n".join(lines) + "\n", encoding="utf-8")
    return len(rows)


def main():
    print("Scanning datapack...")
    scanned = scan_datapack()
    recs, groups = assign(scanned)
    recs_full = {k: v for k, v in recs.items() if isinstance(k, tuple)}
    recs_by_name = {k: v for k, v in recs.items() if isinstance(k, str)}
    # unique groups by lookup from assigned records
    g2 = defaultdict(list)
    seen = set()
    for e in recs_full.values():
        key = (e["name"], e["lookup"])
        if key in seen:
            continue
        seen.add(key)
        g2[e["lookup"]].append(e)
    print(f"Scoped unique items: {len(seen)} across {len(g2)} base items")
    nmap = write_map(g2)
    print(f"Wrote cmd_map.txt ({nmap} rows)")
    print("Generating resource pack...")
    generate_rp(g2)
    print("Patching datapack JSON...")
    nj = patch_json_files(recs_by_name, recs_full)
    print(f"JSON component patches: {nj}")
    print("Patching mcfunction...")
    nf = patch_mcfunctions(recs_by_name)
    print(f"mcfunction files changed: {nf}")


if __name__ == "__main__":
    main()
