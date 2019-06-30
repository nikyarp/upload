#!/bin/sh

setup_git() {
  git config --global user.email "sheilanasehi@gmail.org"
  git config --global user.name "Sheila Nasehi"
}

commit_website_files() {
  git checkout master
  git add . *
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add submit https://github.com/nikyarp/heroku-test > /dev/null 2>&1
  git push --quiet --set-upstream submit master 
}