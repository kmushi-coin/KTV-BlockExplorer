[![Go Report Card](https://goreportcard.com/badge/trezor/blockbook)](https://goreportcard.com/report/trezor/blockbook)

# PIVX Block Explorer

Customized version of TREZOR block indexer: https://github.com/trezor/blockbook

Tested on Ubuntu 18<br> INSTALL THESE PACKAGES<br>
sudo apt-get update<br>
sudo apt-get install -y build-essential<br>
sudo apt-get install software-properties-common<br>
sudo apt-get -y install lz4<br>
sudo apt install -y zstd<br>
sudo apt-get install -y libsnappy-dev<br>
sudo apt-get install -y libbz2-dev<br>
sudo apt-get install -y libzmq3-dev<br>
sudo apt install -y golang<br>
sudo apt-get install -y librocksdb-dev<br>
sudo apt-get install -y liblz4-dev<br>
sudo apt-get install -y libjemalloc-dev<br>
sudo apt-get install libgflags-dev libsnappy-dev zlib1g-dev libbz2-dev libzstd-dev<br>

FOR CHARTS TO WORK YOU WILL NEED TO INSTALL<br>
apt install python3-pip<br>
pip install bitcoinrpc<br>
pip install python-bitcoinrpc<br>

CREATE THE DIRECTORIES <br>
mkdir go<br>

CREATE THE GO PATH<br>
GOPATH=/home/USER/go<br>

cd go<br>
mkdir src<br>
cd src<br>
git clone https://github.com/deansparrow/PIVX-BlockExplorer<br>
mv PIVX-BlockExplorer/ blockbook/<br>
cd blockbook<br>

go mod init<br>
go mod tidy<br>
go build<br>
YOU WILL GET AN ERROR MESSAGE...THATS OK<br>

Edit build/blockchaincfg.json or build/tnblockchaincfg.json adding wallet info<br>

RUN THESE SCRIPTS<br>
./build.sh<br>

UNCOMMENT line for MAINNET or TESTNET <br>
./launch.sh<br>

SETUP NGINX and SSL certs<br>

Edit contrib/scripts/charts/updateCharts_blocks.py for charts<br>
Edit contrib/scripts/charts/updateCharts_github.py for charts<br>
make sure you update config in updateCharts_blocks.py matching your pivxd credentials<br>

run these every hour in a cron<br>
contrib/scripts/charts/updateCharts_blocks.py<br>
contrib/scripts/charts/updateCharts_github.py<br>


















