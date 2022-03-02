#############################################################
#   File Name: run.sh
#     Autohor: Hui Chen (c) 2022
#        Mail: chenhui13@xxx.com
# Create Time: 2022/03/02-15:09:34
#############################################################
#!/bin/sh 
#列出镜像列表
docker images 

#启动容器
docker run -t -i ubuntu:15.10 /bin/bash

#启动另一个版本的镜像
docker run -t -i ubuntu:14.04 /bin/bash

#获取一个新的镜像
docker pull ubuntu:13.10

#查找镜像
docker search httpd

#拖取镜像
docker pull httpd

#删除镜像
docker rmi hello-world

#更新镜像
docker run -t -i ubuntu:15.10 /bin/bash
apt-get update
docker commit -m="has update" -a="runoob" e218edb10161 runoob/ubuntu:v2
#使用我们的新镜像 runoob/ubuntu 来启动一个容器
docker run -t -i runoob/ubuntu:v2 /bin/bash



