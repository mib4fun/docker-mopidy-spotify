#!/bin/bash

set -e

CONFIG_FILE=/root/.config/mopidy/mopidy.conf

if [[ -z $USERNAME && -z $PASSWORD && -z $CLIENT_ID && -z $CLIENT_SECRET ]]
then
  echo You must provide env var USERNAME, PASSWORD, CLIENT_ID and CLIENT_SECRET
  exit 0
fi

sed -i "s/^username = .*$/username =  ${USERNAME}/" $CONFIG_FILE
sed -i "s/^password = .*$/password =  ${PASSWORD}/" $CONFIG_FILE
sed -i "s/^client_id = .*$/client_id =  ${CLIENT_ID}/" $CONFIG_FILE
sed -i "s/^client_secret = .*$/client_secret =  ${CLIENT_SECRET}/" $CONFIG_FILE

exec $@
