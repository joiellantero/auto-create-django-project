import os, sys
from github import Github
from dotenv import load_dotenv

load_dotenv()

folder_name = str(sys.argv[1])
path = os.getenv("FILEPATH") + '/' + folder_name + '-project'
api = os.getenv("API")

if not os.path.isdir(path):
    os.makedirs(path)
    print("\n--- Project folder created! ---\n")
    user = Github(api).get_user()
    repo = user.create_repo(folder_name)
    print("\n--- Github repository created ---\n")
    filename = ".gitignore"
    with open(os.path.join(path, filename), 'w+') as temp_file:
        temp_file.write(".DS_Store\nenv/\nenv/*")
    temp_file.close()
    print("\n--- .gitignore file created---\n")
else:
    print("\n--- Project folder was not created! ---\n[Error] Folder specified already exists.\n")
