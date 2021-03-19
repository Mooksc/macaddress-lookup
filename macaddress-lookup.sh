#!/bin/bash

MACADDRESS_IO_DB="https://macaddress.io/database/macaddress.io-db.json"
WIRESHARK_MANUF_DB="https://gitlab.com/wireshark/wireshark/-/raw/master/manuf"

DATABASES=($MACADDRESS_IO_DB $WIRESHARK_MANUF_DB)
MAC_ADDR=$1
OUI=${MAC_ADDR:0:8}
for i in "${DATABASES[@]}"; do
	curl -s -q $i | grep -wE $OUI
done
