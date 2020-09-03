# auto-create-django-project

<img src="https://img.shields.io/github/license/joiellantero/auto-create-django-project" alt="License MIT">

A bash shell script that automates the creation of a django project in just one command. It also creates a GitHub repository for you!

---
## Prerequisites
- python v3
- pip
- virtualenv
- git

---
## Features
- creates the project folder.
- creates a virtual environment and activates it for you.
- creates the django project.
- creates a local git repository.
- creates a .gitignore containing `.DS_Store`.
- creates a github repository for your project.

---
## Setup

- grab your copy by cloning the repo: `https://github.com/joiellantero/auto-create-django-project.git`

- if you're not seeing `.env` and `.auto.sh`, it's because they're hidden files. Don't worry, try to do `cmd + shift + .` to see them.

- you can also view the hidden files by adding the project folder, `auto-create-django-project`, to your fave code editor.

- here in github, click on your pic on the top right and go to `settings` > `developer settings` > `personal access tokens` > `generate new token`

- name your token to `auto` and check `repo - Full control of private repositories` and `user - Update all user data`
  - we need this so that the script can create a repo for us when we run it.
  - make sure that your credentials are already set up in your git config

- copy your generated token
  - it should look like some random numbers and letters

- edit the `.env` by filling up the necessary info. Place your info inside the double quotation marks like `USERNAME=JohnDoe` (this is your github username). I've set up the code editor by default to atom but feel free to change it to your favorite code editor, e.g., code.

  ```plaintext
  FILEPATH="<put the filepath where you want your project to be saved>"
  USERNAME="JohnDoe"
  API="<put your generated new token here>"
  CODE_EDITOR="atom"
  ```
  - here's a sample `FILEPATH` that saves the project on your desktop:  `/Users/<your-mac-username>/Desktop`
  - make sure there arent spaces in your `FILEPATH`

- open up a terminal and navigate to where you cloned the repo then install the requirements by running `pip install -r requirements.txt`.

- move `setup.py`, `.auto.sh`, `.env` to your home directory, i.e., the directory containing your Applications folder, Desktop, Documents, etc
  - `Macintosh HD` > `Users` > `<your-mac-username>`

---
## Run

> Here's the one-line command that saves you minutes of setting up your new django project!

- open up a new terminal and type in `source .auto.sh <projectName>`
  - if you're on zsh terminal, type in `bash` and press enter. Then proceed by running the command above

- your bash terminal should look like this

  ```bash
  bash-3.2$ source .auto.sh <project-name>
  ```

- you may use this command in any directory yet it will still save your project in the directory you specified in `.env`

---
## Author

- Joie Llantero

---
## Contributors

- feel free to make pull requests

---
## License

- **[MIT license](http://opensource.org/licenses/mit-license.php)**
