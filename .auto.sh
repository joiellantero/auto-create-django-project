#!/bin/bash

setup(){
  source .env
  python3 setup.py $1
  cd $FILEPATH/"$1-project"
  echo "--- setting up virtual environment ---"
  virtualenv env
  echo "--------------------------------------"
}

create_django_project() {
  echo "--- setting up django project ---"
  source $FILEPATH/"$1-project"/env/bin/activate
  python3 -m pip install Django
  django-admin startproject $1
  echo "---------------------------------"
}

create_repo(){
  echo "--- setting up github repository ---"
  touch README.md
  git init
  git add .
  git commit -m 'Initial commit'
  git remote add origin https://github.com/$USERNAME/$1.git
  git push -u origin master
  echo "------------------------------------"
}

if [ $# -eq 0 ]
  then
    echo "No argument supplied."
    echo "Enter the name of your project."
else
  setup $1
  create_django_project $1
  create_repo $1
  $CODE_EDITOR .
fi
