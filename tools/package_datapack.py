"""Rebuild the tracked wallwar.zip from the current datapack, deterministically."""
from pathlib import Path
import hashlib
import zipfile


def main():
    root = Path(__file__).resolve().parents[1]
    paths = [root / "pack.mcmeta", *sorted(p for p in (root / "data").rglob("*") if p.is_file())]
    output = root / "wallwar.zip"
    with zipfile.ZipFile(output, "w", compression=zipfile.ZIP_DEFLATED, compresslevel=9) as archive:
        for path in paths:
            entry = zipfile.ZipInfo(path.relative_to(root).as_posix(), (2026, 1, 1, 0, 0, 0))
            entry.compress_type = zipfile.ZIP_DEFLATED
            entry.external_attr = 0o644 << 16
            archive.writestr(entry, path.read_bytes(), compresslevel=9)
    with zipfile.ZipFile(output) as archive:
        assert archive.testzip() is None
        assert set(archive.namelist()) == {p.relative_to(root).as_posix() for p in paths}
        for path in paths:
            assert archive.read(path.relative_to(root).as_posix()) == path.read_bytes()
    print(f"PASS files={len(paths)} SHA256={hashlib.sha256(output.read_bytes()).hexdigest()}")


if __name__ == "__main__":
    main()
