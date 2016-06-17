NVM_VERSION="0.31.1"
NODE_VERSION="4.4.5"

# NVM
echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v$NVM_VERSION/install.sh | bash > /dev/null
source /home/vagrant/.nvm/nvm.sh

echo "Installing node"
nvm install $NODE_VERSION
nvm alias default $NODE_VERSION

# global npm installs
echo "Installing webpack"
npm install -g webpack > /dev/null
