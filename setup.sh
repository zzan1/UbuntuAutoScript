#!/bin/bash  

echo "Start to configuration"

#update system
sudo apt-get update
sudo apt-get upgrade -y

# install git
sudo apt-get install git -y

#install gnome desktop
sudo apt-get install gnome-shell -y
sudo apt-get install gnome-tweak-tool -y


# install dash to dock
mkdir ~/ubuntuSetup
cd ~/ubuntuSetup/
git clone https://github.com/micheleg/dash-to-dock.git
cd ~/ubuntuSetup/dash-to-dock
make 
make install


#install tool
apt-get install curl -y
apt-get install gdebi -y


sudo add-apt-repository ppa:noobslab/themes -y
sudo apt-get update -y
sudo apt-get install arc-theme -y

sudo add-apt-repository ppa:noobslab/icons -y
sudo apt-get update -y
sudo apt-get install flat-remix-icons -y


#nodejs and npm
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

#install markdown editor tepora
# optional, but recommended
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
# add Typora's repository
sudo add-apt-repository 'deb http://typora.io linux/'
sudo apt-get update
# install typora
sudo apt-get install typora

#java 
#better download java jdk
sudo echo "export JAVA_HOME=/home/orange/Documents/Configuration/jdk1.8.0_151">> /etc/profile
sudo echo "export JRE_HOME=\${JAVA_HOME}/jre">> /etc/profile
sudo echo "export CLASSPATH=.:\${JAVA_HOME}/lib:\${JRE_HOME}/lib">> /etc/profile
sudo echo "export PATH=\${JAVA_HOME}/bin:\$PATH">> /etc/profile
source /etc/profile

#######################################################################
#INSTALL SOFTWARE                                                     #
# ANDROID STUDIO,INTELLJI, GENYMOTION, SKYPE, VSCODE, OXS ARC THEME,  #
####################################################################### 
#download jdk
echo "ready configure oracle java jdk"
cd ~/ubuntuSetup/
sudo wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.tar.gz

tar -xvzf jdk-8u151-linux-x64.tar.gz
sudo mv jdk1.8.0_151/ /SW/jdk1.8.0_151

sudo echo "export JAVA_HOME=SW/jdk1.8.0_151">> /etc/profile
sudo echo "export JRE_HOME=\${JAVA_HOME}/jre">> /etc/profile
sudo echo "export CLASSPATH=.:\${JAVA_HOME}/lib:\${JRE_HOME}/lib">> /etc/profile
sudo echo "export PATH=\${JAVA_HOME}/bin:\$PATH">> /etc/profile
source /etc/profile
echo "finish configure oracle java jdk"


# install skype
cd ~/Downloads

sudo dpkg -i skypeforlinux-64.deb
sudo dpkg -i code_1.17.2-1508162334_amd64.deb
sudo dpkg -i virtualbox-5.2_5.2.0-118431_Ubuntu_xenial_amd64.deb
sudo dpkg -i osx-arc-collection_1.4.3_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

#install genymotion
chmod +x genymotion-2.10.0-linux_x64.bin
sudo ./genymotion-2.10.0-linux_x64.bin

#install android studio
tar -xvzf android-studio-ide-162.4069837-linux.zip
sudo mv android-studio/ /SW/android-studio
cd /SW/android-studio/bin
./studio.sh 

#install intellji
tar -xvzf ideaIU-2017.2.5.tar.gz
sudo mv idea-IU-172.4343.14 /SW/idea-IU-172.4343.14
cd /SW//SW/idea-IU-172.4343.14/bin
./idea.sh 




