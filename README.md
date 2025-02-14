# Construindo uma Aplicação MVC com Laravel 7 para Consulta de CEP

## 1 Apresentação inicial e preparação inicial do Laravel

https://drive.google.com/file/d/1jDWHWaqPZwD-j2QL-0GeCdcimT17gF_P/view

```
git clone https://github.com/laravel/laravel.git "project"
cd "project"
rm -rf .git
```

## 2

```
mkdir -p "\dev\php\php-7.2.5"
curl -L https://windows.php.net/downloads/releases/archives/php-7.2.5-nts-Win32-VC15-x64.zip -o "\dev\php\php-7.2.5.zip"
unzip "\dev\php\php-7.2.5.zip" -d "\dev\php\php-7.2.5"
rm "\dev\php\php-7.2.5.zip"

mkdir -p "\dev\composer\composer-1.10.6"
curl -L https://getcomposer.org/download/1.10.6/composer.phar -o "\dev\composer\composer-1.10.6\composer"
```