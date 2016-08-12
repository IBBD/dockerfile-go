#!/bin/bash
# golang项目环境初始化脚本
# 
# Author: Alex
# Created Time: 2016年08月12日 星期五 16时21分50秒

# 生成对应的目录
mkdir -p /var/www/golang/src/git.ibbd.net/
mkdir -p /var/www/golang/src/golang.org/x/

# 加载被墙的包
cd /var/www/golang/src/golang.org/x
git clone git@github.com:golang/net.git
git clone git@github.com:golang/tools.git
git clone git@github.com:golang/sys.git


