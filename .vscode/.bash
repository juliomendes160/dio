cmd="C:\WINDOWS\system32"
powershell="C:\WINDOWS\System32\WindowsPowerShell\v1.0"
bash="E:\Program Files\Git\bin"
code="E:\Program Files\Microsoft VS Code\bin"
git="E:\Program Files\Git\mingw64\bin"
PATH=$(/bin/cygpath -p "$cmd;$powershell;$bash;$code;$git")
