#!/bin/sh
#
# THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
# FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.
#

BASEDIR=$(dirname $0)

####################### UCD server data

curl -u admin:admin \
    -H "Accept: application/json" \
    -H "Content-type: application/json" \
    -X POST \
    -d @$BASEDIR/data/server-configs.json \
    http://localhost:5516/repository/cis