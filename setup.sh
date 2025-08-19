git clone <repository-url>
git submodule add --force -b <branch-name> <branch-url> <folder-name>
git commit --allow-empty -m "<commit-message>"
git push --force
git push --set-upstream origin <branch-name> </branch-name>
git reset --hard
git clean -fd
