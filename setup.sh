#!/bin/bash  

echo "Start to configuration"
swDir="/sw"
#downloadFolderName="ubuntuSW"

sudo mkdir ${swDir}
#sudo mkdir ~/Downloads/${downloadFolder}

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
cd ~/Downloads
git clone https://github.com/micheleg/dash-to-dock.git
cd dash-to-dock
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
cd ~/Downloads
sudo wget -O ${jdkContainer} --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.tar.gz
tar -xvzf ${jdkContainer}
sudo mv  ~/Downloads/jdk1.8.0_151 ${swDir}/jdk

sudo echo "export JAVA_HOME=${swDir}/jdk" >> /etc/profile
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
androidStudioLink="https://dl.google.com/dl/android/studio/ide-zips/2.3.3.0/android-studio-ide-162.4069837-linux.zip"
intellijIdeaLink="https://download-cf.jetbrains.com/idea/ideaIU-2017.2.5.tar.gz"
skypeLink="https://repo.skype.com/latest/skypeforlinux-64.deb"
vsCodeLink="https://az764295.vo.msecnd.net/stable/b813d12980308015bcd2b3a2f6efa5c810c33ba5/code_1.17.2-1508162334_amd64.deb"
virtualBoxLink="http://download.virtualbox.org/virtualbox/5.2.0/virtualbox-5.2_5.2.0-118431~Ubuntu~xenial_amd64.deb"
osxArcCollectionThemeLink="https://github-production-release-asset-2e65be.s3.amazonaws.com/77880841/16a14c7c-45a6-11e7-81ac-28673f670d57?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20171022%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20171022T093955Z&X-Amz-Expires=300&X-Amz-Signature=98b29dcd8849047f0e774fa1dd00353c8d8c60e4927c6273aa9afba5f5e3d14b&X-Amz-SignedHeaders=host&actor_id=22359905&response-content-disposition=attachment%3B%20filename%3Dosx-arc-collection_1.4.3_amd64.deb&response-content-type=application%2Foctet-stream"
googleChromeLink="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"

# install software
cd ~/Downloads/

skypeName="skype.de"
sudo wget -O ${sktpe.deb} -c ${skypeLink}
sudo dpkg -i ${skypeName}


vscodeName="vsCode.deb"
sudo wget -O ${vscodeName} -c ${vsCodeLink}
sudo dpkg -i ${vscodeName}

virtualBoxName="virtualBox.deb"
sudo wget -O ${virtualBoxName} -c ${virtualBoxLink}
sudo dpkg -i ${virtualBoxName}

chromeName="chrome.deb"
sudo wget -O ${chromeName} -c ${googleChromeLink}
sudo dpkg -i ${chromeName}

osxArcName="osxArc.deb"
sudo wget -O ${osxArcName} --no-check-certificate -c ${osxArcCollectionThemeLink}
sudo dpkg -i ${osxArcName}

#install genymotion
genymotionLink="https://dl.genymotion.com/releases/genymotion-2.10.0/genymotion-2.10.0-linux_x64.bin"
genymotionName="genymotion.bin"
sudo wget -O ${genymotionName} --no-check-certificate -c ${genymotionLink}
chmod +x ${genymotionName}
sudo ${genymotionName}

#install android studio
sudo wget -c ${androidStudioLink}
tar -xvzf android-studio-ide-162.4069837-linux.zip
sudo mv android-studio/ /SW/android-studio
cd /SW/android-studio/bin
./studio.sh 

#install intellij
sudo wget -c ${intellijIdeaLink}
tar -xvzf ideaIU-2017.2.5.tar.gz
sudo mv idea-IU-172.4343.14 /SW/idea-IU-172.4343.14
cd /SW//SW/idea-IU-172.4343.14/bin
./idea.sh 




