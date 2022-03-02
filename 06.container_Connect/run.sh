#############################################################
#   File Name: run.sh
#     Autohor: Hui Chen (c) 2022
#        Mail: chenhui13@xxx.com
# Create Time: 2022/03/02-16:51:47
#############################################################
#!/bin/sh 
#一、网络端口映射

#创建了一个 python 应用的容器
docker run -d -P training/webapp python app.py

# 是容器内部端口绑定到指定的主机端口
docker run -d -p 5000:5000 training/webapp python app.py

#指定容器绑定的网络地址，比如绑定 127.0.0.1。
docker run -d -p 127.0.0.1:5001:5000 training/webapp python app.py

#默认都是绑定 tcp 端口，如果要绑定 UDP 端口，可以在端口后面加上 /udp
docker run -d -p 127.0.0.1:5000:5000/udp training/webapp python app.py

#二、Docker 容器互联
#容器命名
docker run -d -P --name runoob training/webapp python app.py

#新建网络
docker network create -d bridge test-net

#查看网络
docker network ls

#连接容器
#运行一个容器并连接到新建的 test-net 网络:
docker run -itd --name test1 --network test-net ubuntu /bin/bash
#打开新的终端，再运行一个容器并加入到 test-net 网络:
docker run -itd --name test2 --network test-net ubuntu /bin/bash

#进入test1容器
docker exec -it test1 /bin/bash
apt-get update
apt install iputils-ping
#test network
ping test2

docker exec -it test2 /bin/bash
ping test1

#保存apt-get package，提交新镜像
docker commit -m="apt update" -a="chenhui" ccb9582e9fd2 ubuntu:v2_apt_update

#三、配置 DNS
