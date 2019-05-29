#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -i ~/.ssh/id_rsa_drucoder \
    target/tweater-1.1-SNAPSHOT.jar \
    drobovik@192.168.112.128:/home/drobovik/

echo 'Restart server...'

ssh -i ~/.ssh/id_rsa_drucoder drobovik@192.168.112.128 << EOF
pgrep java | xargs kill -9
nohup java -jar tweater-1.1-SNAPSHOT.jar > log.txt &
EOF

echo 'Bye'