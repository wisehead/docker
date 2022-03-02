#############################################################
#   File Name: import_export.sh
#     Autohor: Hui Chen (c) 2022
#        Mail: chenhui13@xxx.com
# Create Time: 2022/03/02-12:06:15
#############################################################
#!/bin/sh 
#1.export

docker export 1e560fca3906 > ubuntu.tar


#2.导入容器快照
cat docker/ubuntu.tar | docker import - test/ubuntu:v1


#3.查看镜像
docker images

#4.通过指定 URL 或者某个目录来导入
docker import http://example.com/exampleimage.tgz example/imagerepo
