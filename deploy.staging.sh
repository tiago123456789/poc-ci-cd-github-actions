#!/bin/bash 

npm install --only=production
cd app
git pull origin develop
./node_modules/.bin/pm2 delete all
npm run start
./node_modules/.bin/pm2 save