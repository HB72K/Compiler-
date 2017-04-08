#
#########################################
# Developer HB72K <ghettoxx2@gmail.com> #	
#########################################
#
#!/bin/bash



yellow='\033[1;33m'
nc='\033[0m'
blue='\033[0;34m'
cyan='\033[0;36m'
green='\033[0;32m'
red='\033[0;31m'
purple='\033[1;35m'
nocol='\033[0m'

printf "${green}Script para instalar las dependencias de customs ROM Lollipop,Marshmallow, Nougat...${nc}\n"

printf "${cyan}...................................................................................................${nc}\n"

printf "${cyan}Instalando dependencias...${nc}\n"


printf "${nocol}Introdusca su contraseña...${nc}\n"

sleep 1s


sudo apt-get update && sudo apt-get upgrade -s
.
sudo apt-get -y install bison build-essential curl flex git gnupg gperf libesd0-dev 
libncurses5-dev libsdl1.2-dev libwxgtk2.8-dev libxml2 libxml2-utils lzop openjdk-7-jdk 
openjdk-7-jre phablet-tools pngcrush schedtool squashfs-tools xsltproc zip zlib1g-dev
g++-multilib gcc-multilib lib32ncurses5-dev lib32readline-gplv2-dev lib32z1-dev maven git-core gnupg flex bison gperf libsdl1.2-dev libesd0-dev libwxgtk2.8-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev openjdk-7-jre openjdk-7-jdk pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev lib32readline-gplv2-dev gcc-multilib bison build-essential curl flex git git-core gnupg gperf libesd0-dev liblz4-tool libncurses5-dev libsdl1.2-dev libwxgtk2.8-dev libxml2 libxml2-utils lzop openjdk-7-jdk openjdk-7-jre pngcrush schedtool squashfs-tools xsltproc zip zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev unzip lib32readline-gplv2-dev lib32z1-dev make python-networkx zlib1g-dev:i386 phablet-tools git ccache automake lzop bison gperf build-essential zip curl zlib1g-dev zlib1g-dev:i386 g++-multilib python-networkx libxml2-utils bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev squashfs-tools pngcrush schedtool dpkg-dev liblz4-tool make optipng gnupg flex bison gperf libsdl1.2-dev libesd0-dev libwxgtk2.8-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev schedtool g++-multilib lib32z1-dev lib32ncurses5-dev lib32readline-gplv2-dev gcc-multilib maven tmux screen w3m ncftp android-tools-adb android-tools-fastboot phablet-tools schedtool

printf "${green}dependencias instaladas n.n ...${nc}\n"

printf "${blue}Instalando java 8...${nc}\n"


printf "${yellow}presiona enter...${nc}\n"

sudo add-apt-repository ppa:webupd8team/java 

sudo apt-get update && sudo apt-get install oracle-java8-installer -s


sudo add-apt-repository ppa:openjdk-r/ppa

sudo apt-get update && sudo apt-get install openjdk-8-jdk


printf "${purple}Developer HB72K :v ...${nc}\n"





sleep 3s
