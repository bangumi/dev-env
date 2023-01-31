import json
import os
from typing import List, Dict

import pymysql

import yaml


def main():
    with open("./docker-compose.yaml", "r", encoding="utf8") as f:
        compose = yaml.safe_load(f.read())

    with open("./sql_script_load_order.txt", "r") as f:
        sql_scripts = f.readlines()
        sql_scripts = [line.rstrip() for line in sql_scripts]

    container_config = compose["services"]["mysql"]["environment"]

    check_sql_scripts(sql_scripts)
    check_tables(container_config)


def check_sql_scripts(sql_scripts: List[str]):
    configured_sql = set(
        [os.path.abspath(line) for line in sql_scripts if line]  # exclude empty lines
    )

    current_sql = set(get_all_sql_file_path())

    if configured_sql - current_sql:
        view = json.dumps(
            [
                "./" + os.path.relpath(x, os.getcwd()).replace("\\", "/")
                for x in configured_sql - current_sql
            ],
            indent=2,
        )
        raise ValueError(
            f"sql script ordered in sql_script_load_order.txt but not found in sql/: {view}"
        )

    if current_sql - configured_sql:
        view = json.dumps(
            [
                "./" + os.path.relpath(x, os.getcwd()).replace("\\", "/")
                for x in current_sql - configured_sql
            ],
            indent=2,
        )
        raise ValueError(
            f"sql script exists in sql/ but not found in sql_script_load_order.txt: {view}"
        )


def check_tables(container_config: Dict[str, str]):
    Expected_Tables = {
        "chii_apps",
        "chii_characters",
        "chii_crt_cast_index",
        "chii_crt_comments",
        "chii_crt_subject_index",
        "chii_ep_comments",
        "chii_ep_revisions",
        "chii_ep_status",
        "chii_episodes",
        "chii_friends",
        "chii_groups",
        "chii_group_members",
        "chii_group_posts",
        "chii_group_topics",
        "chii_index",
        "chii_index_collects",
        "chii_index_comments",
        "chii_index_related",
        "chii_memberfields",
        "chii_likes",
        "chii_members",
        "chii_oauth_access_tokens",
        "chii_oauth_clients",
        "chii_os_web_sessions",
        "chii_person_alias",
        "chii_person_collects",
        "chii_person_cs_index",
        "chii_person_fields",
        "chii_person_relationship",
        "chii_persons",
        "chii_prsn_comments",
        "chii_rev_history",
        "chii_rev_text",
        "chii_subject_alias",
        "chii_subject_imgs",
        "chii_subject_fields",
        "chii_subject_interests",
        "chii_subject_posts",
        "chii_subject_relations",
        "chii_subject_revisions",
        "chii_subject_topics",
        "chii_subjects",
        "chii_timeline",
        "chii_usergroup",
        "chii_notify",
        "chii_notify_field",
        "chii_pms"
    }

    # 打开数据库连接
    db = pymysql.connect(
        host=os.environ.get("CHII_HOST", "127.0.0.1"),
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

        assert data[0].startswith("5.7.33"), data

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


def get_all_sql_file_path() -> List[str]:
    data = []
    for root, _, files in os.walk("./sql/"):
        for file in files:
            data.append(os.path.abspath(os.path.join(root, file)))
    return data


if __name__ == "__main__":
    main()
