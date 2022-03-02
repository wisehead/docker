#############################################################
#   File Name: run.sh
#     Autohor: Hui Chen (c) 2022
#        Mail: chenhui13@xxx.com
# Create Time: 2022/03/02-17:56:23
#############################################################
#!/bin/sh 
#注册
#在 https://hub.docker.com 免费注册一个 Docker 账号。

#登录和退出
docker login

#退出
docker logout

#以 ubuntu 为关键词进行搜索
docker search ubuntu

# 使用 docker pull 将官方 ubuntu 镜像下载到本地
docker pull ubuntu

#推送镜像
#用户登录后，可以通过 docker push 命令将自己的镜像推送到 Docker Hub。
#以下命令中的 username 请替换为你的 Docker 账号用户名。
docker tag ubuntu:18.04 wiseheadchen/ubuntu:18.04
docker image ls

docker tag ubuntu:v2_apt_update wiseheadchen/ubuntu:v2_apt_update
docker images
docker push wiseheadchen/ubuntu:v2_apt_update
docker search wiseheadchen/ubuntu
