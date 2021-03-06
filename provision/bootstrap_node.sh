NVM_VERSION="0.31.1"
NODE_VERSION="4.4.5"

# NVM
echo "Installing nvm"
curl -sSo- https://raw.githubusercontent.com/creationix/nvm/v$NVM_VERSION/install.sh | bash > /dev/null
source /home/vagrant/.nvm/nvm.sh

echo "Installing node"
# https://github.com/creationix/nvm/issues/1079
nvm install $NODE_VERSION 2> /dev/null
nvm alias default $NODE_VERSION

# global npm installs
