# 创建配置文件目录
mkdir -p /alist/config/

cat >/alist/config/config.json <<EOF
{
  "address": "0.0.0.0",
  "port": $PORT,
  "database": {
    "type": "$ADATABASE",
    "user": "$BSQLUSER",
    "password": "$CSQLPASSWORD",
    "host": "$DSQLHOST",
    "port": $ESQLPORT,
    "name": "$FSQLNAME",
    "table_prefix": "x_",
    "db_file": "/alist/config/data.db"
  }
}
EOF

cd /alist
./alist -conf config/config.json
