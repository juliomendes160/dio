COMPOSER(){
    mkdir -p "\dev\composer"
    curl -L https://getcomposer.org/Composer-Setup.exe -o "\dev\composer\Composer-Setup.exe"

    mkdir -p E:/dev/composer/composer-latest
    E:/dev/composer/composer

    mkdir -p E:/dev/composer/composer-2.1.12
    cp E:/dev/composer/composer-latest/* E:/dev/composer/composer-2.1.12/
    curl -L https://getcomposer.org/download/2.1.12/composer.phar -o E:/dev/composer/composer-2.1.12/composer.phar
}

PHP(){
    mkdir -p "\dev\php"
    curl -L https://windows.php.net/downloads/releases/archives/php-7.4.25-nts-Win32-vc15-x64.zip -o E:/dev/php/php-7.4.25.zip
    unzip E:/php/php-7.4.25.zip -d E:/php/php-7.4.25
    
    sed -i 's/^;extension=gd2/extension=gd2/' E:/dev/php/php-7.4.25/php.ini
    # sed -i '/extension=gd2/ s/^;//' E:/dev/php/php-7.4.25/php.ini
    # sed -i '/extension=gd2/ s/^/;/' E:/dev/php/php-7.4.25/php.ini
}

XAMPP(){
    mkdir -p "\dev\xampp\xampp-8.1.1"
    curl -L https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.1.1/xampp-windows-x64-8.1.1-2-VS16-installer.exe/download -o "\dev\xampp\xampp-8.1.1\xampp-windows-x64-8.1.1-2-VS16-installer.exe"
}

ALL(){
    for funcoes in $(grep -o "^[a-zA-Z_][a-zA-Z0-9_]*" "\github\dio\.vscode\.sh" | head -n -1); do
        $funcoes
    done
}
