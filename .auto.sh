#!/bin/bash

arg1=$1

setup(){
  source .env
  python3 setup.py ${arg1}
  cd $FILEPATH/"${arg1}-project"
  echo "--- setting up virtual environment ---"
  virtualenv env
  echo "--------------------------------------"
}

create_django_project() {
  echo "--- setting up django project ---"
  source $FILEPATH/"${arg1}-project"/env/bin/activate
  python3 -m pip install Django
  django-admin startproject ${arg1}
  echo "---------------------------------"
}

create_repo(){
  echo "--- setting up github repository ---"
  touch README.md
  git init
  git add .
  git commit -m 'Initial commit'
  git remote add origin https://github.com/$USERNAME/${arg1}.git
  git push -u origin master
  echo "------------------------------------"
}

django(){
  if [ $# -eq 0 ]
    then
      echo "No argument supplied."
      echo "Enter the name of your project."
  else
    setup
    create_django_project
    create_repo
    $CODE_EDITOR .
  fi
}
