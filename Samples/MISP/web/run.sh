#!/bin/bash
env
#Configure misp-dashboard
cat config.cfg

echo "MISP to Microsoft Security Graph"
PYTHONHASHSEED=0 
python3 script.py
