echo "Installing Go"
wget https://golang.org/dl/go1.14.7.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.14.7.linux-amd64.tar.gz
sudo chmod 777 -R go
rm go1.14.7.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
echo PATH=$PATH:/usr/local/go/bin >> ~/.bashrc
echo "Done"
