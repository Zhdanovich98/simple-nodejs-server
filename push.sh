#!/bin/bash

echo $BRANCH

branch_name=$(echo $BRANCH | tr '/' ' ' | awk '{ print $2 }')

sudo docker login -u $login -p $passwd

sudo docker build -t $login/js_app:${branch_name} .
