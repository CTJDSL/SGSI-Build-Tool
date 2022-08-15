#!/bin/bash

LOCALDIR=`cd "$( dirname ${BASH_SOURCE[0]} )" && pwd`
cd $LOCALDIR/..

if [ ! -d ".git" ];then
        echo "Forcing updating"
        git init
        git checkout -b main11
        git remote add origin https://github.com/MrErenK/SGSIs.git
        git fetch https://github.com/MrErenK/SGSIs.git main11
        git remote -v
        git reset --hard FETCH_HEAD
        git clean -df
        git pull origin main11
        git branch --set-upstream-to=origin/main11
fi

