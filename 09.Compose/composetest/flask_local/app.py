#############################################################
#   File Name: app.py
#     Autohor: Hui Chen (c) 2022
#        Mail: chenhui13@xxx.com
# Create Time: 2022/03/02-18:24:40
#############################################################
#!/usr/bin/env python
#-*- coding:utf8 -*-

import time

#import redis
from flask import Flask

app = Flask(__name__)
#cache = redis.Redis(host='redis', port=6379)


@app.route('/')
def hello():
    #count = get_hit_count()
    #return 'Hello World! I have been seen {} times.\n'.format(count)
    return 'Hello World!\n'
