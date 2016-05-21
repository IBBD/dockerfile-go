# Golang For API

该镜像主要使用于接口服务。


## 更新记录

2016.05.20

初始版本`golang:1.6.2`

## 基础说明

已安装的包

- gopm
- graphql-go
- go-json-rest

web开发框架：

- Martini（如果选择这个，不如选择Gin）
- **Gin**: Gin is a HTTP web framework written in Go (Golang). It features a Martini-like API with much better performance -- up to 40 times faster. If you need smashing performance, get yourself some Gin. https://gin-gonic.github.io/gin/
- **echo**: Echo is a fast and unfancy HTTP server framework for Go (Golang). Up to 10x faster than the rest. https://labstack.com/echo
- **iris**: he fastest web framework for Go. Up to 200K rps from more than 1.45M concurrent keep-alive connections http://iris-go.com
- **goji**: Goji is a minimalistic web framework for Golang that's high in antioxidants.

如果需要比较完善的功能，建议选择Gin，如果对效率要求比较高，可以考虑Iris。

## 常见问题

- golang.org被墙的问题

在`https://gopm.io/download`这里下载包，解压到对应的目录即可。另外，如果在容器里面比较难操作，可以将外部的目录映射到容器里面。

