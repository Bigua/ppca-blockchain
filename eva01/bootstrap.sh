#!/usr/bin/env bash

cd /tmp
wget --progress=bar:force http://www.multichain.com/download/multichain-1.0-beta-2.tar.gz
tar -xvzf multichain-1.0-beta-2.tar.gz
cd multichain-1.0-beta-2
sudo mv multichaind multichain-cli multichain-util /usr/local/bin

multichain-util create colecao  -'anyone-can-connect'=true -'anyone-can-send'=true -'anyone-can-receive'=true -'anyone-can-create'=true  -'default-rpc-port'=6666 -'default-network-port'=6665
cd /home/vagrant/.multichain/colecao/
sed -i 's/MultiChain\ colecao/Minha\ colecao\ de\ gibi/' params.dat
multichaind colecao -daemon