#!/bin/sh
cd "`dirname \"$0\"`"

./mogenerator -m checklist/checklist.xcdatamodeld/checklist.xcdatamodel -O checklist/model --template-var arc=true
