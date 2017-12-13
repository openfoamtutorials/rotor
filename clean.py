#!/usr/bin/env python

import os

folders = [x for x in os.listdir("case/") if os.path.isdir("case/" + x)]
for f in folders:
    if f.isdigit() and int(f) != 0:
        os.system("rm -r case/" + f)
os.system("rm main.msh")
#os.system("rm -r case/postProcessing")
os.system("rm -r case/constant/polyMesh")

