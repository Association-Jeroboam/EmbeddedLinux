#update and upgrade
sudo apt update
sudo apt upgrade

#install X window
sudo apt install -y --no-install-recommends xserver-xorg-core xserver-xorg xfonts-base xinit

#install xfce
sudo apt install -y --no-install-recommends xfce4 desktop-base lightdm

#install essentials
sudo apt install -y --no-install-recommends xfce4-terminal file-roller thunar-volman sshfs

#install ROS dev stuff
sudo apt install -y --no-install-recommends liblog4cxx-dev python3-dev
sudo apt install -y --no-install-recommends python3-numpy python3-netifaces python3-yaml

#install CAN Hat driver
sudo apt install -y wiringpi
wget https://project-downloads.drogon.net/wiringpi-latest.deb
sudo dpkg -i wiringpi-latest.deb

#install RS485 Hat driver
wget http://www.airspayce.com/mikem/bcm2835/bcm2835-1.60.tar.gz
tar zxvf bcm2835-1.60.tar.gz
cd bcm2835-1.60/
sudo ./configure
sudo make && sudo make check && sudo make install
cd ..

#install python libraries
sudo apt-get install python3-pip
pip3 install python-can
pip3 install pygame==2.0.0


#install CAN Linux lib
sudo apt-get install can-utils

# Don't forget to reboot
