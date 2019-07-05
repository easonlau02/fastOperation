#!/bin/bash

name=node-v10.16.0-linux-x64
url=https://nodejs.org/dist/v10.16.0/${name}.tar.gz
workingfolder="~"

cd ${workingfolder}
wget ${url}
sudo tar  xf ${name}.tar.gz -C /usr/local/
cd /usr/local/
sudo mv ${name}/ nodejs
sudo ln -s /usr/local/nodejs/bin/node /usr/local/bin
sudo ln -s /usr/local/nodejs/bin/npm /usr/local/bin

ls -ltr /usr/local/bin/node
ls -ltr /usr/local/bin/npm
