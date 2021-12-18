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
可以自行导入到其他m ysql 实例中使用。
