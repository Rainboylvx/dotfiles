#!/usr/bin/env python3
# -*- coding:utf-8 -*-
import base64
import requests
import json
import re
import os

ss_str = "([\w\d-]*):(\d*)@([\w\.]*):(\d*)"
ssre = re.compile(ss_str)

ss2 = {
"server":"139.162.67.43",
"server_port":443,
"local_address": "127.0.0.1",
"local_port":1080,
"password":"70174014",
"timeout":300,
"method":"aes-256-cfb",
"workers": 1
}

res = 'ss://YWVzLTI1Ni1jZmI6OTM4NTIzNDdAanAwMi5mc3MuZnVuOjE5OTIwCg=='
print(res)
if 1:
    rawss = res[5:]
    print((rawss))
    ss = base64.b64decode(rawss).decode()
    print(ss)
    if ssre.match(ss):
        print("match 成功")
    else:
        print("match 失败")
        os._exit()
    ss2["server"] =ssre.match(ss).group(3) 
    ss2["server_port"] =ssre.match(ss).group(4) 
    ss2["password"] =ssre.match(ss).group(2) 
    ss2["method"] =ssre.match(ss).group(1) 
    print(str(ss))
    print(str(ss2))
    sss = json.dumps(ss2)
    file = open("/home/rainboy/scripts/ss2.json","w")
    try:
        file.write(sss)
    finally:
        file.close()
else:
    print(res)
