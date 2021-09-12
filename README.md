# Alist on heroku

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## FAQ
问：经过一段时间后，Alist 列表为空怎么办？

答：由于 Herok 免费用户无法长时间保存临时文件，导致 Alist 数据库文件丢失导致。目前只有通过外部任何可用的设置对 Alist 进行定时重建目录。

---
问：经过一段时间后，Token 失效导致无法重建列表怎么办？

答：目前 alist-heroku 已允许使用远程地址导入 token 信息，如：https://www.baidu.com/123.txt 。其中 123.txt 内容为可用token，用你知道的办法让该链接的 token 信息保持有效状态就能解决 alist-heroku 令牌失效问题。

## 演示
访问地址：https://cooluc.herokuapp.com

重建密码：123

在任何能添加定时任务的设备上设置每 30 分钟执行以下命令，可以解决 Herok 超时丢失 Alist 数据库问题（重建密码和访问地址需更改为自己的）。

```curl -d '{"path":"home","password":"123","depth":-1}' -H "Content-Type: application/json" -X POST https://cooluc.herokuapp.com/api/rebuild```
