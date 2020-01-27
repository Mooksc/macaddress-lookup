#!/bin/bash

DATABASE=https://macaddress.io/database/macaddress.io-db.json
MAC_ADDR=$1
OUI=${MAC_ADDR:0:8}
FILE=$(mktemp --suffix .json)
curl -s -q $DATABASE | grep $OUI > $FILE
python -c "exec(\"import json\no=open('$FILE', 'r')\ndb=json.load(o)\nfor x in range(0, len(db.keys())):\n\tprint(str(list(db.keys())[x]) + ': ' + str(db[list(db.keys())[x]]))\")"
