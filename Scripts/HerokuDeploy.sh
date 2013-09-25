#!/bin/bash

#change to whichever directory this lives in
cd ~/Projects/Alpha/Website

#create new git repository and add everything
git init
git add .
git commit -m"init"
git remote add heroku git@heroku.com:cieclarke.git

#pull heroku but then checkback out our current local master and mark everything as merged
git pull heroku master
git checkout --ours .
git add -u
git commit -m "merged"

#push back to heroku, open web browser, and remove git repository
git push heroku master
heroku open
rm -fr .git

#go back to wherever we started.
cd -
