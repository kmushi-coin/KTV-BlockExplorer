#!/bin/bash

bin/blockbook -sync -resyncindexperiod=60017 -resyncmempoolperiod=60017 -blockchaincfg=build/blockchaincfg.json -internal=:9049 -public=:443  -logtostderr -certfile=/etc/letsencrypt/live/explorer.rockdev.org
