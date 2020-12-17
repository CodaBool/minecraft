#!/bin/bash
# ====== Lambda ======
# https://g5rkignyck.execute-api.us-east-1.amazonaws.com

# ====== Local ======
# http://192.168.1.34:5050/quote


OUT=$(tail -1 /opt/minecraft/server/logs/latest.log)
if [[ $OUT == *"joined the game"* ]]; then
  IP=$(curl http://192.168.1.34:5050/quote)
  /opt/minecraft/tools/mcrcon/mcrcon -p admin "say $IP"
fi