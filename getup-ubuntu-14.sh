# Run this script with sudo permissions
 
sudo apt-get update
sudo apt-get install -y git emacs make g++ mysql-server
 
# ========== Install NodeJS ==========
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -y nodejs
npm config set prefix ~/npm
export PATH="$PATH:$HOME/npm/bin"
 
# ========== Install NPM Packages ==========
npm install -g mocha bower live-server node-inspector nodemon
 
# ========== Install MongoDB from official repo ==========
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo service mongod start