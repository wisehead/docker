#############################################################
#   File Name: run.sh
#     Autohor: Hui Chen (c) 2022
#        Mail: chenhui13@xxx.com
# Create Time: 2022/03/02-11:19:34
#############################################################
#!/bin/sh 
#如果我们本地没有 ubuntu 镜像，我们可以使用 docker pull 命令来载入 ubuntu 镜像：
docker pull ubuntu

#以下命令使用 ubuntu 镜像启动一个容器，参数为以命令行模式进入该容器：
docker run -it ubuntu /bin/bash

#查看所有的容器命令如下：
docker ps -a

#使用 docker start 启动一个已停止的容器：
docker start b750bbbcfd88

#在大部分的场景下，我们希望 docker 的服务是在后台运行的，我们可以过 -d 指定容器的运行模式。
docker run -itd --name ubuntu-test ubuntu /bin/bash

docker stop docker-tutorial

docker restart ubuntu-test


#进入容器
#注意： 如果从这个容器退出，会导致容器的停止。
docker attach 1e560fca3906
docker exec -it 243c32535da7 /bin/bash

#退出容器
exit

#删除容器
docker rm -f 1e560fca3906
