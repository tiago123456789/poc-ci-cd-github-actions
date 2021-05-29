#!/bin/bash 

cd app
npm install --only=production
git fetch
git checkout $(git for-each-ref refs/tags --sort=-taggerdate --format='%(refname)' --count=1)
./node_modules/.bin/pm2 restart all
./node_modules/.bin/pm2 save