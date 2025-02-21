#1 
[bash]
git ls-remote --tags "https://github.com/laravel/laravel.git"
git clone --branch "v7.12.0" "https://github.com/laravel/laravel.git" "project"
cd "project"
rm -rf .git

#2 
[bash]
curl -L --ssl-no-revoke "https://drive.usercontent.google.com/download?id=12T597FE13CCClkwvMljFdlQmAgS-G5Y4&export=download&authuser=0" -o "utils.zip"
unzip "utils.zip"
mv "utils"/* "."
rm -rf "utils.zip" "utils"

#3 
[bash]
make composer

[make]
composer install --ignore-platform-reqs
exit

#4
[bash]
make up

netstat -ano
netstat -ano | grep :80
netstat -ano | findstr :80
taskkill /F /PID "<PID>"