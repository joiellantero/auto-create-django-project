# auto-create-django-project

A bash shell script that automates the creation of a django project. It also creates a GitHub repository for you.

---
## Features
- creates the project folder
- create the django project with the name specified by the user
- create a github repository for your project

## Setup
- grab your copy by cloning the repo: `https://github.com/joiellantero/auto-create-django-project.git`

- if you're not seeing `.env` and `.auto.sh`, it's because they're hidden files. Don't worry, try to do `cmd + shift + .` to see them.

- you can also view the hidden files by adding the project folder, `auto-create-django-project`, to your fave code editor.

- here in github, go to `settings` > `developer settings` > `personal access tokens` > `generate new token`

- name your token to `auto` and check `repo - Full control of private repositories` and `user - Update all user data`
  - we need this so that the script can create a repo for us for when run it.
  - make sure that your credentials are set up in your git config

- edit the `.env` by filling up the necessary info. Place your info inside the double quotation marks like `USERNAME=JohnDoe`

  ```plaintext
  FILEPATH="<put the filepath where you want your project to be saved>"
  USERNAME="JohnDoe"
  API="<put your generated new token here>"
  CODE_EDITOR="atom"
  ```
  - sample `FILEPATH` that saves the project in the desktop:  `/Users/<your-mac-username>/Desktop`

- move `.auto.sh` and `.env` to your home directory, i.e., the directory with your Applications folder, Desktop, Documents, etc.

- if you dont want to put it there, follow this intruction (havent written this yet. to follow)

- navigate to the home folder and install the requirements by doing `pip install -r requirements.txt`

- then run `source ~/.auto.sh`
  - this works for the current session.
  - once you close your terminal this goes away.
  - you must run this first before using this automation program

- run `django <projectName>`
