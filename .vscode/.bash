PATH="/bin"
code="C:\Program Files\Microsoft VS Code\bin"
git="C:\Program Files\Git\mingw64\bin"

for var in $(grep -o "^[a-z]*" "\github\dio\.vscode\.bash" | head -n -2); do
    PATH+=:$(cygpath -p "${!var}")
done
