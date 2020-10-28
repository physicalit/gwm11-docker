#!/bin/python3
import os
from sys import exit

result = os.popen('docker build .').readlines()
result = [s.strip() for s in result]
if "Successfully" in result[-1]:
    os.popen("docker tag {} 192.168.88.34:5000/gvm11".format(result[-1].split(" ")[-1])).read()
else:
    print("error at build")
    [print(l) for l in result]
    print("error at build")
    exit(2)


os.system("docker push 192.168.88.34:5000/gvm11")