# auto-create-django-project

A bash shell script that automates the creation of a django project. It also creates a GitHub repository for you.

---
## Features
- creates the project folder
- creates the django project with the name specified by the user
- creates a github repository for your project

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

- move `setup.py`, `.auto.sh`, and `.env` to your home directory, i.e., the directory with your Applications folder, Desktop, Documents, etc.
  - if you dont want to put it there, follow this intruction:
    - move `setup.py`, `.auto.sh`, and `.env` to your chosen directory.
    - open terminal and run `atom ~/.bashrc` or `code ~/.bashrc` (you may use `vim ~/.bashrc` if you want)
    - place this inside in a new line: `export PATH="$PATH:<the-complete-path-to-your-folder>"`
    - save the file. conitnue to the next steps.

- navigate to the home folder and install the requirements by doing `pip install -r requirements.txt`

## Run

- then run `source ~/.auto.sh`
  - this works for the current session.
  - once you close your terminal this goes away.
  - you must run this first before using this automation program

- run `django <projectName>`

- your bash terminal should look like this

  ```bash
  source ~/.auto.sh
  django <name-of-django-project>
  ```
- you may now run this in any directory, just run the two lines of commands above.

## Author

- Joie Llantero

## Contributors

- feel free to send pull requests

## License

[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)

- **[MIT license](http://opensource.org/licenses/mit-license.php)**
