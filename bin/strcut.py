#!/usr/bin/env python

while(1):
    s = str(input())
    if (len(s) > 100):
        s = '...' + s[-100:]
    print(s)

