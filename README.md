# auto-create-django-project

A bash shell script that automates the creation of a django project in just one command. It also creates a GitHub repository for you!

---
## Features
- creates the project folder
- creates the django project with the name specified by the user
- creates a local git repository
- creates a .gitignore containing `.DS_Store`
- creates a github repository for your project

---
## Setup

- grab your copy by cloning the repo: `https://github.com/joiellantero/auto-create-django-project.git`

- if you're not seeing `.env` and `.auto.sh`, it's because they're hidden files. Don't worry, try to do `cmd + shift + .` to see them.

- you can also view the hidden files by adding the project folder, `auto-create-django-project`, to your fave code editor.

- here in github, go to `settings` > `developer settings` > `personal access tokens` > `generate new token`

- name your token to `auto` and check `repo - Full control of private repositories` and `user - Update all user data`
  - we need this so that the script can create a repo for us when we run it.
  - make sure that your credentials are already set up in your git config

- edit the `.env` by filling up the necessary info. Place your info inside the double quotation marks like `USERNAME=JohnDoe`. I've set up the code editor by default to atom but feel free to change it to your favorite code editor.

  ```plaintext
  FILEPATH="<put the filepath where you want your project to be saved>"
  USERNAME="JohnDoe"
  API="<put your generated new token here>"
  CODE_EDITOR="atom"
  ```
  - here's a sample `FILEPATH` that saves the project on your desktop:  `/Users/<your-mac-username>/Desktop`

- install the requirements by doing `pip install -r requirements.txt`

- move `setup.py`, `.auto.sh`, `.env` to your home directory, i.e., the directory containing your Applications folder, Desktop, Documents, etc
  - `Macintosh HD` > `Users` > `<your-mac-username>`

## Run

> Here's the one-line command that saves you minutes of setting up your new django project!

- open up a new terminal and type in `source .auto.sh <projectName>`
  - if you're on zsh terminal, type in `bash` and press enter. Then proceed by running the one-line command above

- your bash terminal should look like this

  ```bash
  source .auto.sh <project-name>
  ```

- you may use this command in any directory yet it will still save your project in the directory you specified in `.env`

## Author

- Joie Llantero, Computer Engineering Student

## Contributors

- feel free to make pull requests

## License

[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)

- **[MIT license](http://opensource.org/licenses/mit-license.php)**
