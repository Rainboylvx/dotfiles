#!/bin/env python3
# 随机生成一组数据
# randint.py -n 10 -min 20 -max 30
# -n defalult 5
# -min default 1
# -max default 20
import argparse
import random
parser = argparse.ArgumentParser(description="随机生成一组数据")
parser.add_argument("-n","--numCount",help="输出随机数的个数",type=int)
parser.add_argument("-min","--min",help="输出随机数的最小值",type=int)
parser.add_argument("-max","--max",help="输出随机数的最大值",type=int)
args = parser.parse_args()

#defalult value
numCount = 5
MIX = 1
MAX = 10
if args.numCount:
    numCount = args.numCount

if args.min:
    MIX=args.min

if args.max:
    MAX=args.max

l = [str(random.randint(MIX,MAX)) for _i in range(0,numCount)]
print(' '.join(l))
