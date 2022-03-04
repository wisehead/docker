#############################################################
#   File Name: brew.sh
#     Autohor: Hui Chen (c) 2022
#        Mail: chenhui13@xxx.com
# Create Time: 2022/03/04-21:07:18
#############################################################
#!/bin/sh 
➜  10.Docker-machine git:(master) ✗ brew install docker-machine
Warning: docker-machine has been deprecated because it has an archived upstream repository!
==> Downloading https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/bottles/docker-machine-0.16.2.monterey.bottle.tar.gz
######################################################################## 100.0%
==> Pouring docker-machine-0.16.2.monterey.bottle.tar.gz
==> Caveats
zsh completions have been installed to:
  /usr/local/share/zsh/site-functions

To restart docker-machine after an upgrade:
  brew services restart docker-machine
Or, if you don't want/need a background service you can just run:
  /usr/local/opt/docker-machine/bin/docker-machine start default
==> Summary
🍺  /usr/local/Cellar/docker-machine/0.16.2: 12 files, 27.4MB
==> Running `brew cleanup docker-machine`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
