# Golang For API

该镜像主要使用于接口服务。


## 更新记录

2016.05.28

增加一些常用的包

2016.05.20

初始版本`golang:1.6.2`

## 基础说明

web开发框架：

- **Martini**（如果选择这个，不如选择Gin）
- **Negroni**: Negroni 是一个很地道的 web 中间件，它是微型，非嵌入式，并鼓励使用原生 net/http 处理器的库。Margini作者新开发的web中间件, 更加符合golang哲学。
- **Gin**: Gin is a HTTP web framework written in Go (Golang). It features a Martini-like API with much better performance -- up to 40 times faster. If you need smashing performance, get yourself some Gin. https://gin-gonic.github.io/gin/
- **echo**: Echo is a fast and unfancy HTTP server framework for Go (Golang). Up to 10x faster than the rest. https://labstack.com/echo
- **iris**: he fastest web framework for Go. Up to 200K rps from more than 1.45M concurrent keep-alive connections http://iris-go.com
- **goji**: Goji is a minimalistic web framework for Golang that's high in antioxidants.


如果需要比较完善的功能，建议选择Gin，如果对效率要求比较高，可以考虑Iris。

## 常见问题

- golang.org被墙的问题

1. 在`https://gopm.io/download`这里下载包，解压到对应的目录即可。另外，如果在容器里面比较难操作，可以将外部的目录映射到容器里面。
2. 在`$GOPATH/src/golang.org/x/`目录，执行以下命令：

```sh
git clone git@github.com:golang/net.git
git clone git@github.com:golang/tools.git
git clone git@github.com:golang/text.git
git clone git@github.com:golang/sys.git
git clone git@github.com:golang/crypto.git
```

一次性将许多包下载好，省得以后麻烦。

