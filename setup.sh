# chore(frontend): environment
	https://nodejs.org/dist/v16.20.2/node-v16.20.2-win-x64.zip
	https://nodejs.org/dist/v16.16.0/node-v16.16.0-win-x64.zip	

# chore(frontend): initial commit
	mkdir frontend -p
	cd frontend
	npx gitignore node
	npm init -y

	npm cache clean --force
	npm install @angular/cli@14.1.2 --save-dev

# chore(frontend): project
	npx ng new projeto
	# ? Would you like to add Angular routing? Yes
	# ? Which stylesheet format would you like to use? CSS

	cd projeto
	npm cache clean --force
	npm install @types/node@16.11.7 --save-dev
	
# chore(frontend): server
	cd projeto
	npm cache clean --force
	npm install
	npx ng serve
	
# feat(frontend): module
	npx ng generate module <name>
	npx ng g m <name>
		
# feat(frontend): component
	npx ng generate component <name>
	npx ng g c <name>

# feat(frontend): router

# docs(frontend): final commit
	git commit --allow-empty -m "<commit-message>"
	
	git clone <branch-url>

	git subtree add --prefix=<folder-name> <branch-url> <branch-name> [--squash]

	git submodule add --force -b <branch-name> <branch-url> [<folder-name>]

	git add .gitmodules <submodule-folder>

	git push --force

	git push --set-upstream origin <branch-name>

	git reset --hard

	git clean -fd

	rm -rf <folder-name>
