#!/bin/bash 

npm install --only=production
cd app
git fetch
git checkout master
git pull origin master
./node_modules/.bin/pm2 delete all
npm run start
./node_modules/.bin/pm2 save