#!/bin/bash

DATABASE=https://macaddress.io/database/macaddress.io-db.json
MAC_ADDR=$1
OUI=${MAC_ADDR:0:8}
curl -s -q $DATABASE | grep -wE $OUI
