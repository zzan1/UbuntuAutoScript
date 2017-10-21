#!/bin/bash  


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



