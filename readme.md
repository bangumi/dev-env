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

如果你不使用 docker 或者 docker-compose，也可以下载并导入 <https://bangumi.github.io/dev-env/dist.sql> 文件，此文件包含了本仓库的所有 sql 文件。


## 更新

```shell
sudo rm ./data -rf # 如果不删除旧数据，新添加的sql文件不会被运行。

git pull
docker-compose up -d
```
