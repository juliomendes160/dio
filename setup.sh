# chore: initial commit
# chore environment
# feat: submodule
	
	git submodule add --force -b main https://github.com/felipeAguiarCode/angular-playground angular-playground

	git add .gitmodules angular-playground

# chore: dependency
	
	npm install

# chore: server
	
	npx ng serve

# chore: final commit

	git clone <branch-url>

	git submodule add --force -b <branch-name> <branch-url> <folder-name>

	git add .gitmodules <submodule-folder>

	git commit --allow-empty -m "<commit-name>"

	git push --force

	git push --set-upstream origin <branch-name>

	git reset --hard

	git clean -fd
