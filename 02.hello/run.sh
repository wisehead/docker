#############################################################
#   File Name: run.sh
#     Autohor: Hui Chen (c) 2022
#        Mail: chenhui13@xxx.com
# Create Time: 2022/03/02-11:01:05
#############################################################
#!/bin/sh 
docker run ubuntu:15.10 /bin/echo "Hello world"

#create a new shell.
docker run -i -t ubuntu:15.10 /bin/bash

#使用以下命令创建一个以进程方式运行的容器
docker run -d ubuntu:15.10 /bin/sh -c "while true; do echo hello world; sleep 1; done"

docker ps

#在宿主主机内使用 docker logs 命令，查看容器内的标准输出：
docker logs 2b1b7a428627

#stop docker
docker stop amazing_cori
