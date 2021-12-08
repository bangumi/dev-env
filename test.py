import pymysql

import yaml

with open('./docker-compose.yaml', 'r', encoding='utf8') as f:
    compose = yaml.safe_load(f.read())

container_config = compose['services']['mysql']['environment']

Expected_Tables = {
    'chii_characters',
    'chii_crt_cast_index',
    'chii_crt_subject_index',
    'chii_person_alias',
    'chii_person_collects',
    'chii_person_cs_index',
    'chii_person_fields',
    'chii_person_relationship',
    'chii_persons',
    'chii_subjects',
    'chii_subject_alias',
    'chii_subject_fields',
    'chii_subject_relations',
}

# 打开数据库连接
db = pymysql.connect(
    host='127.0.0.1',
    database=container_config['MYSQL_DATABASE'],
    user=container_config['MYSQL_USER'],
    password=container_config['MYSQL_PASSWORD'],
)

# 使用 cursor() 方法创建一个游标对象 cursor
with db.cursor() as cursor:
    # 使用 execute()  方法执行 SQL 查询
    cursor.execute("SELECT VERSION()")

    # 使用 fetchone() 方法获取单条数据.
    data = cursor.fetchone()

    assert data[0] == '5.7.33', type(data)

    print("Database version : %s " % data)

with db.cursor() as cursor:
    cursor.execute("select * from information_schema.tables")
    data = cursor.fetchall()
    tables = set()
    for table in data:
        if table[1] == container_config['MYSQL_DATABASE']:
            tables.add(table[2])
    assert Expected_Tables == tables, f"missing tables, {Expected_Tables - tables} in database"

db.close()
