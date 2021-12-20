# Bangumi 开发环境

基于 docker 和 docker-compose

本仓库仅用于快速配置 bangumi 开发环境，不包含任何 bangumi 代码。

## QuickStart

```bash
git clone https://github.com/bangumi/dev-env.git bangumi-dev-env
cd bangumi-dev-env
docker-compose up -d
```

mysql容器的内置数据位于 [./sql](https://github.com/bangumi/dev-env/tree/master/sql) 文件夹内，

也可以在你的 mysql 数据库中导入 <https://bangumi.github.io/dev-env/dist.sql> 文件，包含了本仓库的所有 sql 文件。
