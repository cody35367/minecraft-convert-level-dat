#!/bin/bash

#Check https://www.minecraft.net/en-us/download/server/ for updated URL.
MINECRAFT_SERVER_DL_URL="https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar"

curl ${MINECRAFT_SERVER_DL_URL} -o server.jar