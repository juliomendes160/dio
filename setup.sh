# conventional commits
	https://www.conventionalcommits.org/pt-br/v1.0.0/

# code
	https://code.visualstudio.com/
	code -v
	code --install-extension <ID>

# git
	https://git-scm.com/
	git -v
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

# robocopy
	robocopy D:\ "G:\Meu Drive" dev.vhdx /Z

# mklink
	cmd "/c rmdir "I:\\Program Files\\Microsoft VS Code""
	cmd "/c mklink /D "I:\\Program Files\\Microsoft VS Code" "\\code\\1.105.1\\VSCode-win32-x64-1.105.1""