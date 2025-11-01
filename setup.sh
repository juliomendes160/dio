# Conventional Commits
	https://www.conventionalcommits.org/pt-br/v1.0.0/

	# fix:, feat:
	# build:, chore:, ci:, docs:, style:, refactor:, perf:, test:

# Git Commands
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

# Robocopy Commands

	robocopy D:\ "G:\Meu Drive" dev.vhdx /Z
