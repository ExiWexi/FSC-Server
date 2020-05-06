#!/bin/sh

# Start the server.
start_server() {
    java -server -Xms1024M -Xmx16G -jar forge.jar nogui
}

echo "Starting FreaksideCraft Server..."
start_server
