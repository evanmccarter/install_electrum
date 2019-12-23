sudo apt-get -y install python3-pyqt5
wget -c https://download.electrum.org/3.3.8/Electrum-3.3.8.tar.gz
wget -c https://download.electrum.org/3.3.8/Electrum-3.3.8.tar.gz.asc
wget -c https://raw.githubusercontent.com/spesmilo/electrum/master/pubkeys/ThomasV.asc
gpg --import ThomasV.asc

gpg --verify Electrum-3.3.8.tar.gz.asc &&
sudo apt-get -y install python3-setuptools python3-pip &&
python3 -m pip install --user Electrum-3.3.8.tar.gz[fast] &&
sudo -H python3 -m pip install Electrum-3.3.8.tar.gz[fast]
