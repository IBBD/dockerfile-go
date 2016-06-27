#!/bin/bash
# 
# 启动容器
# Author: Alex
# Created Time: 2016年06月27日 星期一 10时34分36秒

docker run -ti --name=ibbd-go -d \
    -v /var/www:/var/www \
    -v /var/www/go-src/:/go \
    -p 8080:8080 \
    golang \
    /bin/bash
