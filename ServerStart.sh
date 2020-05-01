#!/bin/sh

# Start the server.
start_server() {
    java -server -Xms1024M -Xmx16384‬M -XX:+UseG1GC -Dsun.rmi.dgc.server.gcInterval=2147483646 -XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M -Dfml.readTimeout=180 -jar forge.jar nogui
}

echo "Starting FreaksideCraft Server..."
start_server