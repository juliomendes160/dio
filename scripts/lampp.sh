if [ ! -d $lampp ]; then
    wget -P ~/downloads https://sinalbr.dl.sourceforge.net/project/xampp/XAMPP%20Linux/8.0.12/xampp-linux-x64-8.0.12-0-installer.run
    chmod +x ~/downloads/xampp-linux-x64-8.0.12-0-installer.run
    sudo ~/downloads/xampp-linux-x64-8.0.12-0-installer.run
fi

sudo pkill -f /opt/lampp/manager-linux-x64.run
sudo /opt/lampp/manager-linux-x64.run &
