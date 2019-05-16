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

filename = ""

def write_to_file(filename,content):
    file_object = open(filename,'w')
    try:
        file_object.write(content.strip())
    finally:
        file_object.close()

# 检查参数的长度
if len(sys.argv) <= 1:
    print("请输入参数:COGS题目的编号")
    os._exit(0)
print("参数长度:",len(sys.argv))
print("参数名:",sys.argv[1])

pid = sys.argv[1]

# 检测PID是不是都是由数字组成的
for c in pid:
    if c>= '0' and c<='9':
        pass
    else:
        print("参数必须是数字!!")
        os._exit(0)

# 根据ID得到题目的filename
print("正在得到测试文件的filename------")
pid_html = requests.get(COGS_PID+pid)
noAcessMatch = no_access_reg.search(pid_html.text)
if noAcessMatch:
    print("没有阅读权限！")
    os._exit(0)
match = filenameReg.search(pid_html.text)
if match:
    filename=match.group(1)
else:
    print("通过正则表达式没有找到filename!!")
    os._exit(0)

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
