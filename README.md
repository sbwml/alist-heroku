# Alist on heroku

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## FAQ
问：如果让 Herok 应用保持存活状态？

答：

方法一：通过 UptimeRobot 对应用地址进行状态监控，UptimeRobot 会对地址每 5 分钟请求一次使其产生访问流量，Herok 应用将一直保持活跃状态。

方法二（推荐）：使用 curl 命令配合定时任务每10分钟获取一次 Alist 文件目录列表同样可以达到应用不睡眠效果，环境可以是你家里的路由器或其他有curl 命令的 linux。
```
curl -d '{"path":"/","password":""}' -H "Content-Type: application/json" -X POST https://cooluc.herokuapp.com/api/public/path
```

## 演示
访问地址：https://cooluc.herokuapp.com

Cloudflare访问：https://example.cooluc.com
