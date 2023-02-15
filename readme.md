# Bangumi 开发环境

基于 docker 和 docker-compose

本仓库仅用于快速配置 bangumi 开发环境，不包含任何 bangumi 代码。


mysql 容器的内置数据位于 [./sql](sql) 文件夹内，


## 开发

### 安装依赖

```shell
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

### 添加 sql 文件

#### 文件结构

- [./sql/schema/](sql/schema/): DDL 相关 (`create table ...`)
- [./sql/data/](sql/data/): DML 相关 (`insert into ...`)
- [./sql_script_load_order.txt](sql_script_load_order.txt): sql 文件执行顺序定义，按行数正序执行

#### 步骤

1. 把 sql 文件放到对应目录
2. 更新[./sql_script_load_order.txt](sql_script_load_order.txt)
3. 更新[./test.py](test.py#L59)，如果添加了新表

#### 测试

```shell
# 删除旧数据及docker环境
docker-compose down -v --remove-orphans
sudo rm -rf ./data

# 测试
docker-compose up --build -d
python test.py # 需要等docker container准备完成
```

### un-processed

`un-processed/` 文件夹中是已经导出但还没经处理，目前的开源后端服务器也还未使用的表。
