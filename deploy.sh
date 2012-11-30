#!/bin/bash
#
set -ue

$(dirname $0)/sdkapi.sh

echo -e "\n*** Rolling back any pending updates (just in case) ***\n"
appcfg.py --oauth2 $* rollback .

echo -e "\n*** DEPLOYING ***\n"
appcfg.py --oauth2 $* update .
