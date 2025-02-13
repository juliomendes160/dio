php(){
    mkdir -p E:/dev/php
    curl -L https://windows.php.net/downloads/releases/archives/php-7.4.25-nts-Win32-vc15-x64.zip -o E:/dev/php/php-7.4.25.zip
    unzip E:/php/php-7.4.25.zip -d E:/php/php-7.4.25
}

composer(){
    mkdir -p E:/dev/composer
    curl -L https://getcomposer.org/Composer-Setup.exe -o E:/dev/composer/composer.exe

    mkdir -p E:/dev/composer/composer-latest
    E:/dev/composer/composer

    mkdir -p E:/dev/composer/composer-2.1.12
    cp E:/dev/composer/composer-latest/* E:/dev/composer/composer-2.1.12/
    curl -L https://getcomposer.org/download/2.1.12/composer.phar -o E:/dev/composer/composer-2.1.12/composer.phar
}

for funcao in $(grep -o "^[a-zA-Z_][a-zA-Z0-9_]*" "util/scripts.sh" | head -n -2); do
    $funcao
done
