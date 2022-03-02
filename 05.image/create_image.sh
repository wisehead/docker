#############################################################
#   File Name: create_image.sh
#     Autohor: Hui Chen (c) 2022
#        Mail: chenhui13@xxx.com
# Create Time: 2022/03/02-15:37:06
#############################################################
#!/bin/sh 
docker build -t runoob/centos:6.7 .

#我们可以使用新的镜像来创建容器
docker run -t -i runoob/centos:6.7  /bin/bash

#设置镜像标签
docker tag 860c279d2fec runoob/centos:dev

