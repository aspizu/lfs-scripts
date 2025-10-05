import re
from pathlib import Path

# Common typos for various commands
COMMON_TYPOS = {
    # mkbuilddir typos
    "mkbuildir": "mkbuilddir",
    "mkbuilddr": "mkbuilddir",
    "mkbullddir": "mkbuilddir",
    "mkbuildirr": "mkbuilddir",
    "mkbulddir": "mkbuilddir",
    # pkgopen typos
    "pkgoen": "pkgopen",
    "pkopen": "pkgopen",
    "pkgopne": "pkgopen",
    "pgkopen": "pkgopen",
    "pkgopenn": "pkgopen",
    "pkgopn": "pkgopen",
    "pkgope": "pkgopen",
    # pkgclose typos
    "pkgcose": "pkgclose",
    "pkclose": "pkgclose",
    "pkgclos": "pkgclose",
    "pgkclose": "pkgclose",
    "pkgcloose": "pkgclose",
    "pkgclosee": "pkgclose",
    "pkgclse": "pkgclose",
    "pkgcloe": "pkgclose",
}

with open("wget-list-sysv") as f:
    valid_packages = {Path(url).stem.removesuffix(".tar") for url in f}

for script_file in Path(".").glob("**/*.sh"):
    content = script_file.read_text(encoding="utf-8")

    # Check for typos in commands (using word boundaries to avoid false positives)
    for typo, correct in COMMON_TYPOS.items():
        if re.search(r"\b" + re.escape(typo) + r"\b", content):
            print(f"[TYPO] {script_file} contains '{typo}' - did you mean '{correct}'?")

    pkgopen_matches = re.findall(r"pkgopen\s+(\S+)", content)

    if not pkgopen_matches:
        continue

    pkgclose_count = content.count("pkgclose")

    for pkg in pkgopen_matches:
        if pkg not in valid_packages:
            print(f"[WARNING] {script_file} contains invalid pkg {pkg}")

    if len(pkgopen_matches) != pkgclose_count:
        print(
            f"[WARNING] {script_file} has {len(pkgopen_matches)} pkgopen but {pkgclose_count} pkgclose"
        )
