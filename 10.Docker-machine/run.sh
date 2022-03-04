#############################################################
#   File Name: run.sh
#     Autohor: Hui Chen (c) 2022
#        Mail: chenhui13@xxx.com
# Create Time: 2022/03/04-21:24:21
#############################################################
#!/bin/sh 
#1、列出可用的机器
docker-machine ls

#2、创建机器
docker-machine create --driver virtualbox test

#3、查看机器的 ip
docker-machine ip test

#4、停止机器
docker-machine stop test

#5、启动机器
docker-machine start test

#6、进入机器
docker-machine ssh test



