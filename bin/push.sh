#!/bin/bash
git add -A
git commit -m "update $(date +%Y-%m-%d\ %H:%M)"
git push origin master
