PATH="C:\Program Files\Git\mingw64\bin;C:\Program Files\Git\usr\bin;"
PATH=$PATH"C:\Program Files\Microsoft VS Code\bin;"
PATH=$PATH"C:\Program Files\Java\jdk-1.8\bin;"
PATH=$("C:\Program Files\Git\usr\bin\cygpath.exe" -up "$PATH")

git -v && echo 
code -v && echo
java -version && echo