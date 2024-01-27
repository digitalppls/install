if dpkg -s mongodb-org | grep "Status: install"; then
    echo "Successfully installed mongodb"
else
    echo "INSTALL MONGODB";
    sudo apt update
    sudo apt install gnupg
    echo "deb http://security.ubuntu.com/ubuntu focal-security main" | sudo tee /etc/apt/sources.list.d/focal-security.list
    sudo apt-get update
    sudo apt-get install libssl1.1
    wget -qO - https://www.mongodb.org/static/pgp/server-7.5.asc | sudo apt-key add -
    echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/7.5 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.5.list
    sudo apt update
    sudo apt install -y mongodb-org
    sudo systemctl enable mongod
    sudo service mongod start
fi
