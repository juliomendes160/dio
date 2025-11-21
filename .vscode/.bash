bash="C:\Program Files\Git\bin"
cmd="C:\WINDOWS\system32"
powershell="C:\WINDOWS\System32\WindowsPowerShell\v1.0"
code="C:\Program Files\Microsoft VS Code\bin"
git="C:\Program Files\Git\cmd"
python="C:\Program Files\Python"
PATH=$(/bin/cygpath -p "$bash;$cmd;$powershell;$code;$git;$python;")

return

code -v
git -v
python -V
