#! /bin/sh -e

sed -i 's/.*jessie main.*/deb http:\/\/httpredir.debian.org\/debian\/ jessie main contrib/' /etc/apt/sources.list
apt-get -y update
apt-get -y upgrade
apt-get -y install fakeroot java-package libgl1-mesa-glx libgtk2.0-0 libxslt1.1 libxtst6 libxxf86vm1
chsh -s /bin/sh nobody
su -c 'echo y | fakeroot make-jpkg jdk-8u91-linux-x64.tar.gz' nobody
chsh -s /usr/sbin/nologin nobody
dpkg -i oracle-java8-jdk*.deb
update-alternatives --auto java
apt-get -y clean
rm -rf /var/lib/apt/lists/* /var/tmp/*
ls -l /tmp
