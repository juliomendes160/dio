PATH="/bin"
cmd="C:\WINDOWS\system32"
powershell="C:\WINDOWS\System32\WindowsPowerShell\v1.0"
# choco="C:\ProgramData\chocolatey\bin"

code="C:\Program Files\Microsoft VS Code\bin"
git="C:\Program Files\Git\mingw64\bin"
docker="C:\Program Files\Docker\Docker\resources\bin"
php="\dev\php\php-7.2.5"
composer="\dev\composer\composer-1.10.6"

for var in $(grep -o "^[a-z]*" "\github\dio\.vscode\.bash" | head -n -2); do
    PATH+=:$(cygpath -p "${!var}")
done
