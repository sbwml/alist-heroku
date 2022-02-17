# 创建配置文件目录
mkdir -p /alist/config/temp

cat >/alist/config/config.json <<EOF
{
  "address": "0.0.0.0",
  "port": $PORT,
  "assets": "index",
  "database": {
    "type": "$ADATABASE",
    "user": "$BSQLUSER",
    "password": "$CSQLPASSWORD",
    "host": "$DSQLHOST",
    "port": $ESQLPORT,
    "name": "$FSQLNAME",
    "table_prefix": "x_",
    "db_file": "/alist/config/data.db"
  },
  "scheme": {
    "https": false,
    "cert_file": "",
    "key_file": ""
  },
  "cache": {
    "expiration": $GEXPIRATION,
    "cleanup_interval": $HCLEANUP_INTERVAL
  },
  "temp_dir": "/alist/config/temp"
}
EOF

cd /alist
./alist -conf config/config.json
