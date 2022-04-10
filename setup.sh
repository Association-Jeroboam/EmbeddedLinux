#update and upgrade
sudo apt update
sudo apt upgrade

#raspi-config
wget https://mirrors.ustc.edu.cn/archive.raspberrypi.org/debian/pool/main/r/raspi-config/raspi-config_20220303_all.deb
sudo apt install lua5.1  libatopology2 libfftw3-single3 libsamplerate0 alsa-utils
sudo dpkg -i raspi-config_20220303_all.deb

#install X window
sudo apt install -y --no-install-recommends xserver-xorg-core xserver-xorg xfonts-base xinit dbus-x11 xdiagnose

#install xfce
sudo apt install -y --no-install-recommends xfce4 desktop-base lightdm

#install essentials
sudo apt install -y --no-install-recommends xfce4-terminal file-roller thunar-volman sshfs

#install ROS dev stuff
sudo apt install -y --no-install-recommends liblog4cxx-dev python3-dev
sudo apt install -y --no-install-recommends python3-numpy python3-netifaces python3-yaml python3-opencv



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
pip3 install pygame==2.0.0.dev6
sudo pip3 install RPi.GPIO

#ROS lib
sudo apt-get install ros-galactic-tf-transformations
sudo pip3 install transforms3d

#pygame dependencies
sudo apt-get install libSDL2-2.0
sudo apt-get install libSDL2-ttf-2.0.0

#Raspi CAM
sudo apt-get -y install v4l-utils

#install CAN Linux lib
sudo apt-get install can-utils

#Dynamixel SDK
git clone https://github.com/ROBOTIS-GIT/DynamixelSDK.git
cd DynamixelSDK/python
sudo python3 setup.py install

# Don't forget to reboot
