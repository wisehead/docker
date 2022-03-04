#############################################################
#   File Name: download.sh
#     Autohor: Hui Chen (c) 2022
#        Mail: chenhui13@xxx.com
# Create Time: 2022/03/04-21:08:14
#############################################################
#!/bin/sh 
base=https://github.com/docker/machine/releases/download/v0.16.0 &&
  curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/usr/local/bin/docker-machine &&
  chmod +x /usr/local/bin/docker-machine
