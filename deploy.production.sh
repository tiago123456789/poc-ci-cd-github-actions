#!/bin/bash 

npm install --only=production
cd app
git fetch
git checkout master
TAG=$(git describe --tags --abbrev=0)
git checkout $TAG
./node_modules/.bin/pm2 restart all
./node_modules/.bin/pm2 save