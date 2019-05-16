#!/usr/bin/env python3
# -*- coding:utf-8 -*-
import base64
import requests
import json
import re

ss_str = "([\w\d-]*):(\d*)@([\d\.]*):(\d*)"
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

html  = requests.get('http://jiema.wwei.cn/url.html')


_token = "/url/jiema/token/(\w*).html"

_token_re = re.compile(_token,re.M)

m = _token_re.search(html.text)

__token__= m.group(1)

r = requests.post('http://jiema.wwei.cn/url/jiema/token/'+__token__+'.html', data = {'jiema_url':'https://freess.cx/images/servers/jp02.png'})

res = r.json()
print(res)
if 1:
    rawss = res["jiema"][5:]
    print((rawss))
    ss = base64.b64decode(rawss).decode()
    print(ss)
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
