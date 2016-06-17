echo "Updating apt-get"
sudo apt-get update --fix-missing > /dev/null

echo "Installing build-essential"
sudo apt-get install -y build-essential > /dev/null

echo "Installing curl"
sudo apt-get install -y curl > /dev/null

echo "Installing vim"
sudo apt-get install -y vim > /dev/null

echo "Installing git"
sudo apt-get install -y git > /dev/null

