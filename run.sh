#!/bin/bash
# 
# 启动容器
# Author: Alex
# Created Time: 2016年06月27日 星期一 10时34分36秒

docker run -ti --name=ibbd-go -d \
    -v /var/www/golang/src/git.ibbd.net:/var/www \
    -v /var/www/golang:/go \
    -p 8080:8080 \
    -p 8081:8081 \
    -p 8082:8082 \
    ibbd/golang \
    /bin/bash
