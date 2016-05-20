#
# Golang Dockerfile
# 主要为了满足高并发接口而开发
#
# 手动安装包：https://gopm.io/download
#
# https://github.com/ibbd/dockerfile-go
#
# sudo docker build -t ibbd/php7-fpm ./
#

# Pull base image.
FROM golang:1.6.2

MAINTAINER Alex Cai "cyy0523xc@gmail.com"

# Get packages
# Gopm - Go Package Manager
# Gopm [global options] command [command options] [arguments...]
RUN \
    go get -u github.com/gpmgo/gopm \
    && go get net \
    && go get github.com/graphql-go/graphql \
    && go get github.com/ant0ine/go-json-rest/rest
    

# 解决时区问题
ENV TZ "Asia/Shanghai"

# 终端设置
# 执行php-fpm时，默认值是dumb，这时在终端操作时可能会出现：terminal is not fully functional
ENV TERM xterm

# Define mountable directories.
VOLUME /var/www

# 工作目录
WORKDIR /var/www 
