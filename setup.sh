#!/bin/bash  

echo "Start to configuration"

androidStudioLink="https://dl.google.com/dl/android/studio/ide-zips/2.3.3.0/android-studio-ide-162.4069837-linux.zip"
intellijIdeaLink=""
skypeLink=""
vsCodeLink=""
virtualBoxLink=""
osxArcCollectionThemeLink=""
googleChromeLink=""

swDir="/sw"
downloadFolder="~/Downloads/ubuntuSW"

sudo mkdir ${swDir}
sudo mkdir ${downloadFolder}

# update system
echo "update system"
sudo apt-get update -y
sudo apt-get upgrade -y

# install some tools:
echo "install git"
sudo apt-get install git -y
echo "install curl"
apt-get install curl -y
echo "install gdebi"
apt-get install gdebi -y
echo "install vim"
sudo apt-get install -y vim

# install dash to dock
#mkdir ~/ubuntuSetup
#cd ~/ubuntuSetup/
echo "install dash to dock plug in"
cd ${downloadFolder}
git clone https://github.com/micheleg/dash-to-dock.git
cd ${downloadFolder}/dash-to-dock
make 
make install

#install gnome desktop
echo "install gnome shell and tweak tool"
sudo apt-get install gnome-shell -y
sudo apt-get install gnome-tweak-tool -y

# install gnome arc theme
echo "install gnome arc theme"
sudo add-apt-repository ppa:noobslab/themes -y
sudo apt-get update -y
sudo apt-get install arc-theme -y

# install gnome flat remix icon

echo "install gnome flat remix icon"
sudo add-apt-repository ppa:noobslab/icons -y
sudo apt-get update -y
sudo apt-get install flat-remix-icons -y


# install nodejs and npm
echo "configure nodejs and npm environment"
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential

#install markdown editor tepora
echo "install markdown editor Typora"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE -y
sudo add-apt-repository 'deb http://typora.io linux/' -y
sudo apt-get update -y
sudo apt-get install typora -y



# install oracle jdk
echo "ready configure oracle java jdk"
jdkContainer="jdk.tar.gz"
cd ${downloadFolder} 
sudo wget -o ${jdkContainer} --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.tar.gz
tar -xvzf ${jdkContainer}
sudo mv  ${downloadFolder} /${swDir}/${jdkContainer}

sudo echo "export JAVA_HOME=${swDir}/${jdkContainer}" >> /etc/profile
sudo echo "export JRE_HOME=\${JAVA_HOME}/jre" >> /etc/profile
sudo echo "export CLASSPATH=.:\${JAVA_HOME}/lib:\${JRE_HOME}/lib" >> /etc/profile
sudo echo "export PATH=\${JAVA_HOME}/bin:\$PATH" >> /etc/profile
source /etc/profile
echo "finish configure oracle java jdk"



#######################################################################
# INSTALL SOFTWARE                                                    #
# VSCODE                                                              #
# OXS ARC THEME                                                       #
# GENYMOTION                                                          #
# SKYPE                                                               #
# ANDROID STUDIO                                                      #
# INTELLJI                                                            #
####################################################################### 


# install software
cd ${downloadFolder}

sudo dpkg -i skypeforlinux-64.deb
sudo dpkg -i code_1.17.2-1508162334_amd64.deb
sudo dpkg -i virtualbox-5.2_5.2.0-118431_Ubuntu_xenial_amd64.deb
sudo dpkg -i osx-arc-collection_1.4.3_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

#install genymotion
chmod +x genymotion-2.10.0-linux_x64.bin
sudo ./genymotion-2.10.0-linux_x64.bin

#install android studio
cd ~/Downloads
sudo wget -c https://dl.google.com/dl/android/studio/ide-zips/2.3.3.0/android-studio-ide-162.4069837-linux.zip
tar -xvzf android-studio-ide-162.4069837-linux.zip
sudo mv android-studio/ /SW/android-studio
cd /SW/android-studio/bin
./studio.sh 

#install intellij
tar -xvzf ideaIU-2017.2.5.tar.gz
sudo mv idea-IU-172.4343.14 /SW/idea-IU-172.4343.14
cd /SW//SW/idea-IU-172.4343.14/bin
./idea.sh 




