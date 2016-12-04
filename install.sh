#!/bin/bash -e

#sudo apt-get clean
#sudo mv /var/lib/apt/lists /tmp
#sudo mkdir -p /var/lib/apt/lists/partial
#sudo apt-get clean
#sudo apt-get update

yum clean all
yum update -y

echo "================= Updating global rvm packages ==================="
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
echo '[[ -s /etc/profile.d/rvm.sh ]] && source /etc/profile.d/rvm.sh' >> $HOME/.bashrc
[[ -s /etc/profile.d/rvm.sh ]] && source /etc/profile.d/rvm.sh

cd /c6ruby
mv .gemrc $HOME/.gemrc

for file in /c6ruby/version/*;
do
  $file
done

echo "================= Cleaning package lists ==================="
yum clean all
