#!/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-get install -y libevent-dev ncurses-dev bison pkg-config
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python-setuptools
sudo apt-get install -y libldns-dev
sudo apt-get install -y python3-pip
sudo apt-get install -y python-pip
sudo apt-get install -y python-dnspython
sudo apt-get install -y rename
sudo apt-get install -y xargs
echo "install nikto"
sudo apt-get install -y nikto
echo "done"








sudo apt install -y python3.8-venv
mkdir source
cd sourc#install go



if [[ -z "$GOPATH" ]];then

	echo "Installing Golang"
	wget https://golang.org/dl/go1.16.7.linux-amd64.tar.gz
	sudo tar -xvf go1.16.7.linux-amd64.tar.gz
	sudo mv go /usr/local
	export GOROOT=/usr/local/go
	export GOPATH=$HOME/go
	export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
	echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
	echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile			
	echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile	
	source ~/.bash_profile
	sleep 1
	break
fi


sudo snap install curl



#Don't forget to set up AWS credentials!
echo "Don't forget to set up AWS credentials!"
sudo apt install -y awscli
echo "Don't forget to set up AWS credentials!"



#create a tools folder in ~/
mkdir -p ~/tools
cd ~/tools/

#install aquatone
echo "Installing Aquatone"
go get github.com/michenriksen/aquatone
echo "done"

#install chromium
echo "Installing Chromium"
sudo snap install chromium
echo "done"

echo "installing  assetfinder"
go get -u github.com/tomnomnom/assetfinder
echo "done"

# need to fix this

echo "installing docker"
curl https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
echo "done"


echo "installing JSParser"
git clone https://github.com/nahamsec/JSParser.git
cd JSParser*
sudo python setup.py install
cd  ~/tools/
echo "done"

echo "installing Sublist3r"
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
pip install -r requirements.txt
cd ~/tools/
echo "done"

echo "installing gobuster"
sudo apt install -y gobuster 
echo "done"

echo "installing subfinder"
go get -v github.com/projectdiscovery/subfinder/cmd/subfinder
echo "done"

echo "installing amass"
export GO111MODULE=on
go get -v -u github.com/OWASP/Amass/v3/...
echo "done"


echo "installing teh_s3_bucketeers"
git clone https://github.com/tomdev/teh_s3_bucketeers.git
cd ~/tools/
echo "done"


echo "installing wpscan"
git clone https://github.com/wpscanteam/wpscan.git
cd wpscan*
sudo gem install bundler && bundle install --without test
cd ~/tools/
echo "done"

echo "installing dirsearch"
git clone https://github.com/maurosoria/dirsearch.git
cd ~/tools/
echo "done"


echo "installing lazys3"
git clone https://github.com/nahamsec/lazys3.git
cd ~/tools/
echo "done"

echo "installing virtual host discovery"
git clone https://github.com/jobertabma/virtual-host-discovery.git
cd ~/tools/
echo "done"


echo "installing sqlmap"
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
cd ~/tools/
echo "done"

echo "installing knock.py"
git clone https://github.com/guelfoweb/knock.git
cd ~/tools/
echo "done"

echo "installing lazyrecon"
git clone https://github.com/nahamsec/lazyrecon.git
cd ~/tools/
echo "done"

echo "installing nmap"
sudo apt-get install -y nmap
echo "done"

echo "installing massdns"
git clone https://github.com/blechschmidt/massdns.git
cd ~/tools/massdns
make
cd ~/tools/
echo "done"

echo "installing asnlookup"
git clone https://github.com/yassineaboukir/asnlookup.git
cd ~/tools/asnlookup
pip install -r requirements.txt
cd ~/tools/
echo "done"

echo "installing httprobe"
go get -u github.com/tomnomnom/httprobe 

echo "done"

echo "installing unfurl"
go get -u github.com/tomnomnom/unfurl 
echo "done"

echo "installing waybackurls"
go get github.com/tomnomnom/waybackurls
echo "done"

echo "installing crtndstry"
git clone https://github.com/nahamsec/crtndstry.git
echo "done"

echo "downloading Seclists"
cd ~/tools/
git clone https://github.com/danielmiessler/SecLists.git
cd ~/tools/SecLists/Discovery/DNS/
##THIS FILE BREAKS MASSDNS AND NEEDS TO BE CLEANED
cat dns-Jhaddix.txt | head -n -14 > clean-jhaddix-dns.txt
cd ~/tools/SecLists/Passwords/Leak-databases/
rm -f rockyou-*.txt
tar -xzf rockyou.txt.tar.gz
cd ~/
ln -s ~/tools/SecLists/Passwords/rockyou.txt ~/rockyou.txt
cd ~/tools/
echo "done"

echo "installing metasploit"
mkdir temp
cd temp/
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall
echone "done"

echo "install SearchSploit"
sudo git clone https://github.com/offensive-security/exploitdb.git /opt/exploitdb
sudo ln -sf /opt/exploitdb/searchsploit /usr/local/bin/searchsploit
echo "done"

echo "install masscan"
cd ~/source
git clone https://github.com/robertdavidgraham/masscan.git
cd masscan
make 
sudo make install
cd ~
echo "done"




echo "installing hydra"
apt-get install libssl-dev libssh-dev libidn11-dev libpcre3-dev \
                 libgtk2.0-dev libmysqlclient-dev libpq-dev libsvn-dev \
                 firebird-dev libmemcached-dev libgpg-error-dev \
                 libgcrypt11-dev libgcrypt20-dev

wget -O /tmp/hydra.tar.gz https://www.openssl.org/source/openssl-1.0.2g.tar.gz
tar -xzvf /tmp/hydra.tar.gz -C /tmp/
cd /tmp/openssl-1.0.2g/
./config --prefix=/usr/local/ssl --openssldir=/usr/local/ssl
make
sudo make install
cd /tmp/
rm -rf /tmp/hydra.tar.gz /tmp/openssl-1.0.2g
echo "done"



echo "checking for updates"
sudo apt update
sudo apt upgrade -y 
echo "done"

echo "remove old apt packages"
sudo apt autoremove -y
echo "done"
sudo apt autoclean -y


echo "install fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
echo "done"


echo "install gobuster"
go get github.com/OJ/gobuster
echo "done"

echo "installing bash_aliases"
cp ~/ubuntu-setup/bash_aliases  ~/.bash_aliases

echo "done"

echo "install hexedit"
sudo apt-get install -y hexedit
echo "done"


echo "install mysql client"
sudo apt-get install -y mysql-client
echo "done"

echo "install metasploit"
mkdir temp
cd temp/
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall
cd ..
echo "done"



echo "install pawncat"
cd ~/tools/git/
git clone https://github.com/calebstewart/pwncat.git
cd ~/tools/git/pwncat/
python3 -m venv pwncat-env
source pwncat-env/bin/activate
python setup.py install

echo "done"




cd ~/tools/
echo "\n\n\n\n\n\n\n\n\n\n\nDone! All tools are set up in ~/tools"
ls -la
echo "One last time: don't forget to set up AWS credentials in ~/.aws/!"