import os

import pymysql
import yaml
from pymysql.constants import CLIENT


def main():
    with open("./docker-compose.yaml", "r", encoding="utf8") as f:
        compose = yaml.safe_load(f.read())

    with open("./sql_script_load_order.txt", "r") as f:
        sql_scripts = f.readlines()
        sql_scripts = [line.rstrip() for line in sql_scripts if line.rstrip()]

    container_config = compose["services"]["mysql"]["environment"]

    db = pymysql.connect(
        host=os.environ.get("CHII_HOST", "127.0.0.1"),
        database=container_config["MYSQL_DATABASE"],
        user=container_config["MYSQL_USER"],
        password=container_config["MYSQL_PASSWORD"],
        client_flag=CLIENT.MULTI_STATEMENTS,
    )

    for script in sql_scripts:
        with open(script, 'r', encoding='utf8') as f:
            sql = f.read()
        print(f"executing {script}")
        with db.cursor() as cursor:
            cursor.execute(sql)

    db.close()


if __name__ == "__main__":
    main()
