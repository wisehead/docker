#############################################################
#   File Name: run.sh
#     Autohor: Hui Chen (c) 2022
#        Mail: chenhui13@xxx.com
# Create Time: 2022/03/02-18:20:49
#############################################################
#!/bin/sh 
#开始构建镜像
docker build -t nginx:v3 .
