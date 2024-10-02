import re
from pathlib import Path

patterns = [
    (re.compile(r'(\r?\n)-- Host: .*\r?\n'), r'\g<1>'),
    (re.compile(r' AUTO_INCREMENT=\d+ '), ' '),
]

file: Path

for file in Path('sql/schema').iterdir():
    print(file)
    with file.open(newline='', encoding='utf8') as f:
        content = f.read()
    for pattern, repl in patterns:
        content = pattern.sub(repl, content)
    file.write_text(content, encoding='utf8', newline='')
