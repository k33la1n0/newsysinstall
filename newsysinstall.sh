#/bin/bash
echo "Hi" $USER", I want to install some stuff!"
echo "----------------------------------------"
echo "!                                      !"
echo "!    ++++                       ++++   !"
echo "!    ++++                       ++++   !"
echo "!    ++++                       ++++   !"
echo "!          ==               ==         !"
echo "!           =================          !"
echo "!                                      !"
echo "----------------------------------------"
echo "! audacity shotcut gimp                !"
echo "! inkscape vlc krita peek              !"
echo "! gscan2pdf pdftk img2pdf lutris       !"
echo ""
echo "yes (y) | no (n)"
read -n 1 -p "" ans;
case $ans in
    y|yes|Y|1)
        sudo apt install audacity shotcut gimp inkscape vlc krita peek gscan2pdf pdftk img2pdf lutris -y;;
    n|no|N|2)
        exit;;
esac
###############################################
echo "Uhhh "$USER", here are more, more, more ..."
echo "----------------------------------------"
echo "!                                      !"
echo "!    +  +                       +  +   !"
echo "!    +  +                       +  +   !"
echo "!           =================          !"
echo "!          ==               ==         !"
echo "!           =================          !"
echo "!                                      !"
echo "----------------------------------------"
echo "! remmina emacs keepass freecad        !"
echo "! htop git spyder3 qgis                !"
echo "! nodejs exa jackd qjackctl            !"
echo ""
echo "yes (y) | no (n)"
read -n 1 -p "" ans;
case $ans in
    y|yes|Y|1)
        sudo apt install remmina emacs keepassxc freecad htop git spyder3 qgis nodejs jackd qjackctl -y;;
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
echo "! r-base python3.10 python3-pip        !"
echo "! python3-dev codium arduino           !"
echo ""
echo "yes (y) | no (n)"
read -n 1 -p "" ans;
case $ans in
    y|yes|Y|1)
        sudo apt update
        sudo apt install python3.10
        sudo apt install r-base python3-pip python3-dev codium arduino -y
        ;;
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
echo "! rocket.chat signal                   !"
echo "! element gajim discord                !"
echo ""
echo "yes (y) | no (n)"
read -n 1 -p "" ans;
case $ans in
    y|yes|Y|1)
        flatpak install chat.rocket.RocketChat
	flatpak install org.signal.Signal
	flatpak install im.riot.Riot
	flatpak install org.gajim.Gajim
	flatpak install com.discordapp.Discord
	;;
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
echo "! mullvad threema			     !"
echo ""
echo "yes (y) | no (n)"
read -n 1 -p "" ans;
case $ans in
    y|yes|Y|1)
        wget --content-disposition https://mullvad.net/download/app/deb/latest && sudo apt-get install gdebi-core -y && sudo gdebi MullvadVPN*amd64.deb
        wget --content-disposition https://releases.threema.ch/web-electron/v1/release/Threema-Latest.deb && sudo gdebi Threema-Latest.deb
	;;
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
echo "! k33la1n0 github repro		     !"
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
	echo "--------------"
	echo "Installation von Jupyter Notebook"
	echo "--------------"
	sudo apt install jupyter-core jupyter-notebook
	echo "--------------"
	echo "Um jupyter zu starten ->"
	echo "eingabe im Terminal:"
	echo "jupyter notebook"
	echo ""
	echo "--------------"
	echo "Browser-Eingabe ->"
	echo "localhost:8888"
	echo ""
	echo "--------------"
        ;;
    n|no|N|2)y
        exit;;
esac
