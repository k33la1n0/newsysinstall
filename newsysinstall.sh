#/bin/bash
echo "Hi l!V, I want to install some stuff    "
echo "----------------------------------------"
echo "!                                      !"
echo "!    ++++                       ++++   !"
echo "!    ++++                       ++++   !"
echo "!    ++++                       ++++   !"
echo "!          ==               ==         !"
echo "!           =================          !"
echo "!                                      !"
echo "----------------------------------------"
echo ""
echo "yes (y) | no (n)"
read -n 1 -p "" ans;
case $ans in
    y|yes|Y|1)
        sudo apt install audacity shotcut gimp inkscape vlc -y;;
    n|no|N|2)
        exit;;
esac
###############################################
echo "Uhhh l!V, here are more, more, more     "
echo "----------------------------------------"
echo "!                                      !"
echo "!    +  +                       +  +   !"
echo "!    +  +                       +  +   !"
echo "!           =================          !"
echo "!          ==               ==         !"
echo "!           =================          !"
echo "!                                      !"
echo "----------------------------------------"
echo ""
echo "yes (y) | no (n)"
read -n 1 -p "" ans;
case $ans in
    y|yes|Y|1)
        sudo apt install emacs keepassxc freecad htop -y;;
    n|no|N|2)
        exit;;
esac
###############################################
echo "So, now we install programming stuff    "
echo "----------------------------------------"
echo "!                                      !"
echo "!    ++ +                       + ++   !"
echo "!    + ++                       ++ +   !"
echo "!           =================          !"
echo "!          ===================         !"
echo "!           =================          !"
echo "!                                      !"
echo "----------------------------------------"
echo ""
echo "yes (y) | no (n)"
read -n 1 -p "" ans;
case $ans in
    y|yes|Y|1)
        sudo apt install r-base python3-pip codium arduino -y;;
    n|no|N|2)
        exit;;
esac
###############################################
echo "we can install flatpak things           "
echo "----------------------------------------"
echo "!                                      !"
echo "!    ++++                       ++++   !"
echo "!    ++++                       ++++   !"
echo "!                 =========            !"
echo "!                 =       =            !"
echo "!                 =       =            !"
echo "!                 =========            !"
echo "!                                      !"
echo "----------------------------------------"
echo ""
echo "yes (y) | no (n)"
read -n 1 -p "" ans;
case $ans in
    y|yes|Y|1)
        flatpak install chat.rocket.RocketChat/x86_64/stable;;
        
    n|no|N|2)
        exit;;
esac
###############################################
echo "NOW, we must install secret stuff       "
echo "----------------------------------------"
echo "!                                      !"
echo "!   ++  ++                     ++  ++  !"
echo "!    ++++                       ++++   !"
echo "!                                      !"
echo "!                                      !"
echo "!              .==.  .==.              !"
echo "!             =-   ==   -=             !"
echo "!                                      !"
echo "----------------------------------------"
echo ""
echo "yes (y) | no (n)"
read -n 1 -p "" ans;
case $ans in
    y|yes|Y|1)
        wget --content-disposition https://mullvad.net/download/app/deb/latest && sudo apt-get install gdebi-core -y && sudo gdebi MullvadVPN*amd64.deb -y;;

    n|no|N|2)
        exit;;
esac
###############################################
echo "Yes, now we load stuff from github      "
echo "----------------------------------------"
echo "!                                      !"
echo "!   ++  ++                     ++  ++  !"
echo "!    ++++                       ++++   !"
echo "!   ++  ++                     ++  ++  !"
echo "!                                      !"
echo "!                                      !"
echo "!               ========               !"
echo "!                                      !"
echo "----------------------------------------"
echo ""
echo "yes (y) | no (n)"
read -n 1 -p "" ans;
case $ans in
    y|yes|Y|1)
        mkdir ~/bin
        cd ~/bin
        git clone https://github.com/k33la1n0/.bashrc
        mv ~/bin/.bashrc/.bashrc ~/.bashrc
        git clone https://github.com/k33la1n0/.profile
        mv ~/bin/.profile/.profile ~/.profile
        git clone https://github.com/k33la1n0/texdebinstall
        sudo chmod +x ~/bin/texdebinstall/texdebinstall.sh
        git clone https://github.com/k33la1n0/envmic
        sudo chmod +x ~/bin/envmic/envmic.sh
        sudo chmod +x ~/bin/envmic/start.sh
        git clone https://github.com/k33la1n0/linuxgc
        sudo chmod +x ~/bin/linuxgc/install.sh
        sudo chmod +x ~/bin/linuxgc/script.sh
        sudo chmod +x ~/bin/linuxgc/start.sh
        git clone https://github.com/k33la1n0/sysup
        sudo chmod +x ~/bin/sysup/sysup.sh
        git clone https://github.com/k33la1n0/xmpp
	sudo chmod +x ~/bin/xmpp/xampp-start.sh
	sudo chmod +x ~/bin/xmpp/xampp-stop.sh
        ;;
    n|no|N|2)
        exit;;
esac
