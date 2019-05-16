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

html  = requests.get('http://jiema.wwei.cn/url.html')


_token = "/url/jiema/token/(\w*).html"
_token = "var _token = \"(\w*)\";"

_token_re = re.compile(_token,re.M)

m = _token_re.search(html.text)

__token__= m.group(1)

r = requests.post('http://jiema.wwei.cn/url-jiema.html', data = {'jiema_url':'https://freess.cx/images/servers/us02.png','token':__token__})

res = r.json()
if 1:
   rawss = res["data"][5:]
   # print((rawss))
   ss = base64.b64decode(rawss).decode()
   # print(ss)
   if ssre.match(ss):
       pass
   else:
       print("match 失败")
       os._exit()
   ss2["server"] =ssre.match(ss).group(3) 
   ss2["server_port"] =ssre.match(ss).group(4) 
   ss2["password"] =ssre.match(ss).group(2) 
   ss2["method"] =ssre.match(ss).group(1) 
   sss = json.dumps(ss2)
   print(sss)
   # file = open("/home/rainboy/scripts/ss2.json","w")
   # try:
       # file.write(sss)
   # finally:
       # file.close()
else:
   print(res)
