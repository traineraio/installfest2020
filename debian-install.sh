#!/bin/sh

apt-get update
apt-get install -y curl git gnupg2 apt-transport-https

curl -sL https://deb.nodesource.com/setup_13.x | bash -

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
echo "deb https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list

apt-get update
apt-get install -y nodejs yarn code
