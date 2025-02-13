COMPOSER(){
    if [[ $1 == 2.2.4 ]]; then
        mkdir -p "\dev\composer\composer-2.2.4"
        curl -L https://getcomposer.org/Composer-Setup.exe -o "\dev\composer\composer-2.2.4\Composer-Setup.exe"
        start "\dev\composer\composer-2.2.4\Composer-Setup.exe"
        
        curl -L https://getcomposer.org/download/2.2.4/composer.phar -o "\dev\composer\composer-2.2.4\composer.phar"
        mv "\dev\composer\composer-2.2.4\composer.phar" "\dev\composer\composer-2.2.4\composer"
    fi
}

CODE(){
   code --install-extension bmewburn.vscode-intelephense-client
}

PHP(){
    mkdir -p "\dev\php"
    curl -L https://windows.php.net/downloads/releases/archives/php-7.4.25-nts-Win32-vc15-x64.zip -o E:/dev/php/php-7.4.25.zip
    unzip E:/php/php-7.4.25.zip -d E:/php/php-7.4.25
    
    code "\dev\php\php-7.4.25\php.ini"
    # ;extension=gd2
    # sed -i '/extension=gd2/ s/^;//' E:/dev/php/php-7.4.25/php.ini
    # sed -i '/extension=gd2/ s/^/;/' E:/dev/php/php-7.4.25/php.ini
}

XAMPP(){
    if [[ $1 == 8.1.1 ]]; then
        mkdir -p "\dev\xampp\xampp-8.1.1"
        curl -L https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.1.1/xampp-windows-x64-8.1.1-2-VS16-installer.exe/download -o "\dev\xampp\xampp-8.1.1\xampp-windows-x64-8.1.1-2-VS16-installer.exe"
        start "\dev\xampp\xampp-8.1.1\xampp-windows-x64-8.1.1-2-VS16-installer.exe"
        code "\dev\xampp\xampp-8.1.1\app\apache\conf\httpd.conf"
        cygpath -m ""
        # mv "\dev\xampp\xampp-8.1.1\app\htdocs" "\dev\xampp\xampp-8.1.1\app\htdocs2"        
        # cmd //c "mklink /D E:\dev\xampp\xampp-8.1.1\app\htdocs \"\github\dio\Formação PHP Experience\3 Boas Práticas PHP e Desenvolvimento de APIs com Laravel\3.2-Introdução-a-APIs-e-REST-com-PHP\""
    fi
}

ALL(){
    for funcoes in $(grep -o "^[a-zA-Z_][a-zA-Z0-9_]*" "\github\dio\.vscode\.sh" | head -n -1); do
        $funcoes
    done
} 

$@
