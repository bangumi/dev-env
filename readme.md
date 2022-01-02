# Bangumi 开发环境

基于 docker 和 docker-compose

本仓库仅用于快速配置 bangumi 开发环境，不包含任何 bangumi 代码。

## QuickStart

```bash
git clone https://github.com/bangumi/dev-env.git bangumi-dev-env
cd bangumi-dev-env
docker-compose up --build -d
```

mysql容器的内置数据位于 [./sql](sql) 文件夹内，

如果你不使用 docker 或者 docker-compose，也可以下载并导入 <https://bangumi.github.io/dev-env/dist.sql> 文件，此文件包含了本仓库的所有 sql 文件。

墙内可以访问 jsdelivr 镜像网址 https://cdn.jsdelivr.net/gh/bangumi/dev-env@gh-pages/dist.sql

此 SQL 不支持多次运行。如果运行失败请删除旧数据库中所有表后重试。

### 更新

```shell
git pull
bash scripts/reload.sh
```

---

## 开发

### 安装依赖
```shell
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```


### 添加sql文件

#### 文件结构

* [./sql/schema/](sql/schema/): DDL相关 (`create table ...`)
* [./sql/data/](sql/data/): DML相关 (`insert into ...`)
* [./sql_script_load_order.txt](sql_script_load_order.txt): sql文件执行顺序定义，按行数正序执行

#### 步骤
1. 把sql文件放到对应目录
2. 更新[./sql_script_load_order.txt](sql_script_load_order.txt)
3. 更新[./test.py](test.py#L55)，如果添加了新表

#### 测试
```shell
# 删除旧数据及docker环境
docker-compose down -v
sudo rm -rf ./data

# 测试
docker-compose up --build -d
python test.py # 需要等docker container准备完成
```

#### Notes
* sql文件需要设定encoding
```sql
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- sql body


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */; 
```
