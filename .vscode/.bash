composer=$(cygpath -p "E:\dev\composer\composer-2.1.12")
php=$(cygpath -p "E:\dev\php\php-7.4.25")
git=$(cygpath -p "C:\Program Files\Git\mingw64\bin;C:\Program Files\Git\usr\bin")
code=$(cygpath -p "C:\Program Files\Microsoft VS Code\bin")
system=$(cygpath -p "C:\WINDOWS\system32;C:\WINDOWS\System32\WindowsPowerShell\v1.0")
for var in $(grep -o "^[a-zA-Z_][a-zA-Z0-9_]*" ".vscode/.bash" | head -n -3); do
   vars+=${!var}:
done
PATH=$vars

cd "E:\github\dio\Formação PHP Experience\2 Tratamento de Exceções e Programação Orientada a Objetos em PHP\2.2-Gerenciamento-de-Pacotes-em-PHP-com-Composer"
