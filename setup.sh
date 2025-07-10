# chore: initial commit
# chore: environment
	
	https://nodejs.org/dist/v17.8.0/node-v17.8.0-x64.msi

# chore: dependency

	npm install

# chore: project

	mkdir frontend
	cd frontend

	npx gitignore node
	npm init -y
	npm install react@18.1.0 react-dom@18.1.0

	npx create-react-app projeto

# chore: server

	cd projeto
  	npm start

# docs: final commit

	git submodule add --force -b master https://github.com/digitalinnovationone/trilha-react-desafio01-calculadora trilha-react-desafio01-calculadora
	git submodule add --force -b master https://github.com/digitalinnovationone/trilha-react-desafio-2 trilha-react-desafio-2
	git submodule add --force -b master https://github.com/digitalinnovationone/trilha-react-desafio-3 trilha-react-desafio-3
	git submodule add --force -b master https://github.com/digitalinnovationone/trilha-react-desafio-4 trilha-react-desafio-4

	git clone <repository-url>

	git commit --allow-empty -m "<commit-message>"

	git submodule add --force -b <branch-name> <branch-url> <folder-name>

	git add .gitmodules <submodule-folder>

	git push --force

	git push --set-upstream origin <branch-name> </branch-name>

	git reset --hard

	git clean -fd
