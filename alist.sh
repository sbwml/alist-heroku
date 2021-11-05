# 创建配置文件目录
mkdir -p /alist/config/

cat >/alist/config/config.json <<EOF
{
  "address": "0.0.0.0",
  "port": $PORT,
  "database": {
    "type": "sqlite3",
    "user": "",
    "password": "",
    "host": "",
    "port": 0,
    "name": "",
    "table_prefix": "x_",
    "db_file": "/alist/config/data.db"
  }
}
EOF

cd /alist
./alist -conf config/config.json
