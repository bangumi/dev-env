import json
import ntpath
import os
import posixpath
from typing import List

import pymysql

import yaml


def main():
    with open("./docker-compose.yaml", "r", encoding="utf8") as f:
        compose = yaml.safe_load(f.read())

    container_config = compose["services"]["mysql"]["environment"]

    volumes = compose["services"]["mysql"]["volumes"]
    check_volumes(volumes)

    Expected_Tables = {
        "chii_characters",
        "chii_crt_cast_index",
        "chii_crt_subject_index",
        "chii_episodes",
        "chii_person_alias",
        "chii_person_collects",
        "chii_person_cs_index",
        "chii_person_fields",
        "chii_person_relationship",
        "chii_persons",
        "chii_subjects",
        "chii_subject_alias",
        "chii_subject_fields",
        "chii_subject_relations",
        "chii_rev_text",
        "chii_ep_revisions",
        "chii_subject_revisions",
        "chii_rev_history",
        "chii_oauth_access_tokens",
        "chii_members",
        "chii_memberfields",
    }

    # 打开数据库连接
    db = pymysql.connect(
        host="127.0.0.1",
        database=container_config["MYSQL_DATABASE"],
        user=container_config["MYSQL_USER"],
        password=container_config["MYSQL_PASSWORD"],
    )

    # 使用 cursor() 方法创建一个游标对象 cursor
    with db.cursor() as cursor:
        # 使用 execute()  方法执行 SQL 查询
        cursor.execute("SELECT VERSION()")

        # 使用 fetchone() 方法获取单条数据.
        data = cursor.fetchone()

        assert data[0] == "5.7.33", type(data)

        print("Database version : %s " % data)

    with db.cursor() as cursor:
        cursor.execute("select * from information_schema.tables")
        data = cursor.fetchall()
        tables = set()
        for table in data:
            if table[1] == container_config["MYSQL_DATABASE"]:
                tables.add(table[2])
        assert (
            Expected_Tables == tables
        ), f"missing tables {Expected_Tables - tables}, extra tables {tables - Expected_Tables} in database"

    db.close()


def check_volumes(volumes: List[str]):
    volumes = volumes[1:]  # 第一行是mysql持久化数据的配置

    map = {}
    for line in volumes:
        try:
            source, dst = line.split(":")
        except ValueError:
            raise ValueError(line)
        if not dst.startswith("/docker-entrypoint-initdb.d/"):
            raise ValueError(line)
        map[source] = dst

    assert len(set(map.values())) == len(map.values())
    assert len(map) == len(volumes)

    current_sql = set(
        list_dir_with_full_path("./sql/data") + list_dir_with_full_path("./sql/schema")
    )
    configurated_sql = {os.path.abspath(x) for x in map}

    if configurated_sql - current_sql:
        view = json.dumps(
            [
                "./" + os.path.relpath(x, os.getcwd()).replace("\\", "/")
                for x in configurated_sql - current_sql
            ],
            indent=2,
        )
        raise ValueError(
            f"docker-compose volumes file missing in the repo to docker-compose file {view}"
        )

    if current_sql - configurated_sql:
        view = json.dumps(
            [
                "./" + os.path.relpath(x, os.getcwd()).replace("\\", "/")
                for x in current_sql - configurated_sql
            ],
            indent=2,
        )
        raise ValueError(f"sql file in repo not mapped to docker-compose file {view}")


def list_dir_with_full_path(p: str) -> List[str]:
    return [os.path.abspath(os.path.join(p, x)) for x in os.listdir(p)]


if __name__ == "__main__":
    main()
