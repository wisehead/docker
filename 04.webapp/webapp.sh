#############################################################
#   File Name: webapp.sh
#     Autohor: Hui Chen (c) 2022
#        Mail: chenhui13@xxx.com
# Create Time: 2022/03/02-14:19:43
#############################################################
#!/bin/sh 
# 载入镜像
docker pull training/webapp

#在docker容器中运行一个 Python Flask 应用来运行一个web应用。
docker run -d -P training/webapp python app.py

#get the http port
docker ps

#access web server
http://localhost:55000/

# set port
docker run -d -p 5000:5000 training/webapp python app.py


#get port
docker port xenodochial_perlman

#查看 WEB 应用程序日志
docker logs -f bf08b7f2cd89

#查看WEB应用程序容器的进程
docker top xenodochial_perlman

#检查 WEB 应用程序
#使用 docker inspect 来查看 Docker 的底层信息。它会返回一个 JSON 文件记录着 Docker 容器的配置和状态信息。
docker inspect xenodochial_perlman

#停止 WEB 应用容器
docker stop xenodochial_perlman
docker start xenodochial_perlman

#ocker ps -l 查询最后一次创建的容器：
docker ps -l

