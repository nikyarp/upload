#!/bin/sh

setup_git() {
  git config --global user.email "sheilanasehi@gmail.org"
  git config --global user.name "Sheila Nasehi"
}

commit_website_files() {
  git checkout master
  git add .
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add submit https://github.com/nikyarp/upload
  git push -f --quiet --set-upstream submit master 
}