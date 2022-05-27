[![Go Report Card](https://goreportcard.com/badge/trezor/blockbook)](https://goreportcard.com/report/trezor/blockbook)

# PIVX Block Explorer

Customized version of TREZOR block indexer: https://github.com/trezor/blockbook

Tested on Ubuntu 18<br> INSTALL THESE PACKAGES<br>
sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install software-properties-common
sudo apt-get -y install lz4
sudo apt install -y zstd
sudo apt-get install -y libsnappy-dev
sudo apt-get install -y libbz2-dev
sudo apt-get install -y libzmq3-dev
sudo apt install -y golang
sudo apt-get install -y librocksdb-dev
sudo apt-get install -y liblz4-dev
sudo apt-get install -y libjemalloc-dev
sudo apt-get install libgflags-dev libsnappy-dev zlib1g-dev libbz2-dev libzstd-dev

FOR CHARTS TO WORK YOU WILL NEED TO INSTALL
apt install python3-pip
pip install bitcoinrpc
pip install python-bitcoinrpc

CREATE THE DIRECTORIES 
mkdir go

CREATE THE GO PATH
GOPATH=/home/<user>/go

cd go
mkdir src
cd src
git clone https://github.com/deansparrow/PIVX-BlockExplorer
mv PIVX-BlockExplorer/ blockbook/
cd blockbook

go mod init
go mod tidy
go build
YOU WILL GET AN ERROR MESSAGE...THATS OK

Edit build/blockchaincfg.json or build/tnblockchaincfg.json adding wallet info

RUN THESE SCRIPTS
./build.sh

UNCOMMENT line for MAINNET or TESTNET 
./launch.sh

SETUP NGINX and SSL certs

Edit contrib/scripts/charts/updateCharts_blocks.py for charts
Edit contrib/scripts/charts/updateCharts_github.py for charts
make sure you update config in updateCharts_blocks.py matching your pivxd credentials

run these every hour in a cron
contrib/scripts/charts/updateCharts_blocks.py
contrib/scripts/charts/updateCharts_github.py


















