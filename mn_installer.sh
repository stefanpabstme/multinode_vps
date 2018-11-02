#!/bin/bash 
echo "This script will install some masternodes..."


read -r -p "Install smartcash? [y/n] " smart
read -r -p "Install anonymousbitcoin? [y/n] " anon
read -r -p "Install magnacoin? [y/n] " mgn
read -r -p "Install socialsend? [y/n] " send
read -r -p "Install hempcoin? [y/n] " thc
read -r -p "Install pure? [y/n] " pure
read -r -p "Install digiwage? [y/n] " wage
read -r -p "Install rupaya? [y/n] " rupx
read -r -p "Install syndicate? [y/n] " synx
read -r -p "Install travelpay? [y/n] " trp


if [ "$smart" = "y" ]; then
  echo "Installing smart.."
  wget https://rawgit.com/smartcash/smartnode/master/install.sh
  bash ./install.sh
fi

if [ "$anon" = "y" ]; then
  echo "Installing anon.."
  wget https://raw.githubusercontent.com/alttankcanada/ANONMasternodeScript/master/anon_mnsetup_install.sh
  bash ./anon_mnsetup_install.sh
fi

if [ "$mgn" = "y" ]; then
  echo "Installing mgn.."
  wget https://github.com/MagnaCoinProject/MagnaCoin/releases/download/v1.0.0/mgn-1.0.0-x86_64-linux-gnu.tar.gz
  uzip mgn-1.0.0-x86_64-linux-gnu.tar.gz
  
fi

if [ "$send" = "y" ]; then
  echo "Installing send.."
  git clone https://github.com/SocialSend/easy_masternode.git
  cd easy_masternode
  bash ./mn_install.sh
fi

if [ "$thc" = "y" ]; then
  echo "Installing thc.."
  wget -q https://raw.githubusercontent.com/hempcoin-project/mnscript/master/hempcoin_install.sh
  bash hempcoin_install.sh
fi

if [ "$pure" = "y" ]; then
  echo "Installing pure.."
  
fi

if [ "$wage" = "y" ]; then
  echo "Installing wage.."
  
fi

if [ "$rupx" = "y" ]; then
  echo "Installing rupx.."
  
fi

if [ "$synx" = "y" ]; then
  echo "Installing synx.."
  
fi

if [ "$trp" = "y" ]; then
  echo "Installing travelpay.. Damn scam.."
  
fi
