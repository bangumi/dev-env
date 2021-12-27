"""
concat all sql to a single sql file
"""
import os
import sys
from typing import List, TextIO


def main():
    with open("sql_script_load_order.txt", 'r') as f:
        sql_scripts = [line.rstrip() for line in f.readlines()]

    os.makedirs("./public", exist_ok=True)

    with open("./public/dist.sql", 'w+', encoding='utf-8') as f:
        build_final_sql(sql_scripts, out=f)
        f.close()


def build_final_sql(sql_scripts: List[str], out: TextIO):
    sql_scripts = [line for line in sql_scripts if line]  # remove empty lines

    for i, source in enumerate(sql_scripts):
        print(f"{i}: {source}", file=sys.stderr)
        with open(source, 'r', encoding='utf8') as f:
            out.write(f.read())


if __name__ == "__main__":
    main()
