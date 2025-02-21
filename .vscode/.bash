PATH="/bin"
cmd="C:\WINDOWS\system32"
powershell="C:\WINDOWS\System32\WindowsPowerShell\v1.0"
code="C:\Program Files\Microsoft VS Code\bin"
git="C:\Program Files\Git\mingw64\bin"
make="C:\Program Files (x86)\GnuWin32\bin"
docker="C:\Program Files\Docker\Docker\resources\bin"

for var in $(grep -o "^[a-z]*" "\github\dio\.vscode\.bash" | head -n -2); do
    PATH+=:$(cygpath -p "${!var}")
done
