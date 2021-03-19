#!/bin/bash

MACADDRESS_IO_DB="https://macaddress.io/database/macaddress.io-db.json"
WIRESHARK_MANUF_DB="https://gitlab.com/wireshark/wireshark/-/raw/master/manuf"

DATABASE=https://macaddress.io/database/macaddress.io-db.json
MAC_ADDR=$1
OUI=${MAC_ADDR:0:8}
curl -s -q $DATABASE | grep -wE $OUI
