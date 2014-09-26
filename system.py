#!/bin/python2

import os

# os.system always uses the parent's environment
# stop using it.
print("pass-through environment: ");
os.system("env > /tmp/python.thru.env.sh")

print "safe environment: ";
from subprocess import call
call("env > /tmp/python.safe.env.sh", shell=True, env={"PATH": "/bin"})
