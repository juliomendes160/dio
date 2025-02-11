php(){
    mkdir -p E:/dev/php
    curl -L https://windows.php.net/downloads/releases/archives/php-7.4.25-nts-Win32-vc15-x64.zip -o E:/dev/php/php-7.4.25.zip
    unzip E:/php/php-7.4.25.zip -d E:/php/php-7.4.25
    
    sed -i 's/^;extension=gd2/extension=gd2/' E:/dev/php/php-7.4.25/php.ini
    # sed -i '/extension=gd2/ s/^;//' E:/dev/php/php-7.4.25/php.ini
    # sed -i '/extension=gd2/ s/^/;/' E:/dev/php/php-7.4.25/php.ini
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

build(){
    composer init

    # Package name (<vendor>/<name>) [julio/2.2-gerenciamento-de-pacotes-em-php-com-composer]:
    # Description []: 
    # Author [Julio Mendes <juliomendes160@hotmail.com>, n to skip]: 
    # Minimum Stability []: 
    # Package Type (e.g. library, project, metapackage, composer-plugin) []: project
    # License []: 

    # Would you like to define your dependencies (require) interactively [yes]? no
    # Would you like to define your dev dependencies (require-dev) interactively [yes]? no
    # Add PSR-4 autoload mapping? Maps namespace "Julio\22GerenciamentoDePacotesEmPhpComComposer" to the entered relative path. [src/, n to skip]: n

    # Do you confirm generation [yes]? yes

    composer require mpdf/mpdf:^8.0

    touch "index.php"
    
cat << 'EOD' > index.php
<?php
    require_once __DIR__ . '/vendor/autoload.php';

    $mpdf = new \Mpdf\Mpdf();
    $mpdf->WriteHTML('<h1>Hello world!</h1>');
    $mpdf->Output(); 
EOD

    php -S localhost:9000
}

if ! [ $# -eq 0 ]; then
    $@ 
    exit
fi

for funcao in $(grep -o "^[a-zA-Z_][a-zA-Z0-9_]*" "util/scripts.sh" | head -n -2); do
    $funcao
done
