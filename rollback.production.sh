#!/bin/bash 

cd app
git checkout $(cat previous-tag.txt)
./node_modules/.bin/pm2 restart all
./node_modules/.bin/pm2 save