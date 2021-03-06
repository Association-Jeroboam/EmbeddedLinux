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
