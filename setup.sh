# chore: initial commit
# chore: environment

	https://nodejs.org/dist/v17.8.0/node-v17.8.0-x64.msi

	npm install -g yarn

# chore: dependency

	npm install

# chore: final commit

	git clone <repository-url>
	
	git commit --allow-empty -m "<commit-message>"

	git submodule add --force -b <branch-name> <branch-url> <folder-name>
	git add .gitmodules <submodule-folder>

	git push --force
	git push --set-upstream origin <branch-name> </branch-name>

	git reset --hard
	git clean -fd
