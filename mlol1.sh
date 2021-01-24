#!/bin/bash

ETHPOOL=asia.sparkpool.com:3333
ETHWALLET=0x70278496f0eaa3810d9dbdd7f388425e029013db.lolMinerWorker

ETCPOOL=etc-asia1.nanopool.org:19999
ETCWALLET=0xe8e1673bd442235b2f6a3b9429ad888e9a8e11cd.lolMinerWorker

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETHASH --pool $ETHPOOL --user $ETHWALLET --dualmode etc --dualstratum $ETCWALLET@$ETCPOOL  $@