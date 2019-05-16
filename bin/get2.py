#!/usr/bin/env python3
# -*- coding:utf-8 -*-

import requests
import sys
import os
import re


COGS_REQUEST_URL= "http://cogs.pro:8080/cogs/submit/testdata.php"
COGS_PID = "http://cogs.pro:8080/cogs/problem/problem.php?pid="
filenameReg = re.compile(r'<code>([\s\S]+)\.in/out</code>')
no_access_reg = re.compile(r'没有阅读权限！')

filename = "defense"

def write_to_file(filename,content):
    file_object = open(filename,'w')
    try:
        file_object.write(content.strip())
    finally:
        file_object.close()


payload = {
    'filename':filename,
    'point':0,
    'io':'in'
}

true_length = 0
for i in range(1,21):
    print(filename,i,".in文件:","开始下载")
    payload['point']= i
    r = requests.post(COGS_REQUEST_URL,data=payload)
    print(filename,i,".in文件","下载完成")
    if( r.text.strip() == ""):
        true_length=i
        break
    write_to_file(filename+str(i)+".in",r.text.strip())


for i in range(1,true_length):
    print(filename,i,".out文件:","开始下载")
    payload['point']= i
    payload['io']= 'ans'
    r = requests.post(COGS_REQUEST_URL,data=payload)
    print(filename,i,".out文件","下载完成")
    write_to_file(filename+str(i)+".out",r.text.strip())
