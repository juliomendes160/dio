PATH="/bin"
cmd="C:\WINDOWS\system32;"
powershell="C:\WINDOWS\System32\WindowsPowerShell\v1.0"
code="C:\Program Files\Microsoft VS Code\bin"
git="C:\Program Files\Git\mingw64\bin"
flutter="\dev\flutter\3.0.5\flutter\bin"

for var in $(grep -o "^[a-z]*" "\github\dio\.vscode\.bash" | head -n -2); do
    if [[ -v $var ]]; then
        PATH+=:$(cygpath -p "${!var}")
    fi
done
