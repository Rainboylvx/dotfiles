#!/usr/bin/env python
import sys
def fac(n):
    if n == 1 or n == 0:
        return 1
    return n*fac(n-1)
n = sys.argv[1]
print(fac(int(n)))
