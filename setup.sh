#!/bin/bash

#current directory = ~/
echo "Downloading: normalize.css..."
wget -t 5 "https://raw.githubusercontent.com/necolas/normalize.css/master/normalize.css" -O css/0-plugins/normalize.scss
if [ $? -ne 0 ]
  then echo -e "Error: Couldn't download normalize.css\n"
  else echo -e "normalize.css downloaded\n"
fi

cd css/0-plugins/
#current directory = ~/css/0-plugins/
echo "Downloading: Bourbon..."
gem install bourbon
echo "Installing: Bourbon..."
bourbon install
echo -e "Bourbon Installed\n"

echo "Downloading: Neat..."
gem install neat
echo "Installing: Neat..."
neat install
echo -e "Neat Installed\n"

echo "Downloading: Bitters..."
gem install bitters
echo "Installing: Bitters..."
bitters install
echo -e "Bitters Installed\n"

cd ../../
#current directory = ~/
echo "Downloading: NPM Dependecies"
npm install
echo -e "\n"

echo "Initializing Git"
git init
echo -e "\n"

echo "Starting Grunt"
grunt