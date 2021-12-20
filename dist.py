"""
concat all sql to a single sql file
"""
import os
from typing import List, TextIO

import yaml


def main():
    with open("./docker-compose.yaml", "r", encoding="utf8") as f:
        compose = yaml.safe_load(f.read())

    volumes = compose["services"]["mysql"]["volumes"]

    os.makedirs("./public", exist_ok=True)

    with open("./public/dist.sql", 'w+', encoding='utf-8') as f:
        build_final_sql(volumes, out=f)


def build_final_sql(volumes: List[str], out: TextIO):
    volumes = volumes[1:]  # 第一行是mysql持久化数据的配置

    map = {}
    for line in volumes:
        try:
            source, dst = line.split(":")
        except ValueError:
            raise ValueError(line)
        if not dst.startswith("/docker-entrypoint-initdb.d/"):
            raise ValueError(line)
        map[dst] = source

    for dst in sorted(map.keys()):
        source = map[dst]
        with open(source, 'r', encoding='utf8') as f:
            out.write(f.read())


if __name__ == "__main__":
    main()
