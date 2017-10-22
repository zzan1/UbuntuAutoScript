#!/bin/bash 


sudo apt-get install unzip -y
#install android studio

cd ~/Downloads
ls
unzip android-studio-ide-162.4069837-linux.zip -d ~/Downloads
mv ~/Downloads/android-studio /SW/android_studio-test
cd /SW/android_studio-test/bin
ls
chmod +x studio.sh
./studio.sh 


