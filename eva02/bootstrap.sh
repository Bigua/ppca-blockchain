#!/usr/bin/env bash

cd /tmp
wget --progress=bar:force http://www.multichain.com/download/multichain-1.0-beta-2.tar.gz
tar -xvzf multichain-1.0-beta-2.tar.gz
cd multichain-1.0-beta-2
mv multichaind multichain-cli multichain-util /usr/local/bin