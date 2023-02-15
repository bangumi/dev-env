# Bangumi 开发环境

基于 docker 和 docker-compose

本仓库仅用于快速配置 bangumi 开发环境，不包含任何 bangumi 代码。

## QuickStart

```bash
git clone https://github.com/bangumi/dev-env.git bangumi-dev-env --depth=1
cd bangumi-dev-env
docker-compose up --build -d
# start mysql binlog message watcher, optional
cd mq
docker-compose up -d
```

mysql 容器的内置数据位于 [./sql](sql) 文件夹内，

如果你不使用 docker 或者 docker-compose，也可以下载并导入 <https://bangumi.github.io/dev-env/dist.sql> 文件，此文件包含了本仓库的所有 sql 文件。

墙内可以访问 jsdelivr 镜像网址 https://cdn.jsdelivr.net/gh/bangumi/dev-env@gh-pages/dist.sql

---

`./mq/` 文件夹包含 kafka 和 debezium 等组件的配置文件，用于解析 mysql 的 binlog。

基础的 http server 不需要这些服务，可以不启动。

如果你不在运行 docker-compose 的机器上进行开发（也就是说不使用`localhost`或者`127.0.0.1`来链接到数据库），
设置 `CHII_HOST` 环境变量来解决 kafka 的 `KAFKA_ADVERTISED_LISTENERS` 问题

### 更新

```shell
git pull
bash scripts/reload.sh
```

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

## 可用账号

https://github.com/bangumi/dev-docs#api
