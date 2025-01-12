git=$(cygpath -p "C:\Program Files\Git\mingw64\bin;C:\Program Files\Git\usr\bin")
code=$(cygpath -p "C:\Program Files\Microsoft VS Code\bin")
system=$(cygpath -p "C:\WINDOWS\system32;C:\WINDOWS\System32\WindowsPowerShell\v1.0")
PATH=$flutter:$git:$code:$system
