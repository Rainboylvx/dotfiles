#!/usr/bin/python3
import sys
import os
prefix = r"\\wsl$\Arch"
now_path = os.getcwd()
if len(sys.argv) > 1:
    now_path = os.path.realpath(sys.argv[1])
now_path = prefix +now_path
print(now_path.replace(r'/',r'\\').replace('\\',r'\\'))
