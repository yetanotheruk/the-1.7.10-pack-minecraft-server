#!/bin/bash

################################################################################
#Script Name	: minecraft.sh
#Description	: Downloads, unpacks and runs The 1.7.10 Pack - Minecraft Server
#Author       	: Ashley Baker
#Website       	: https://yetanother.uk/
################################################################################

echo "Starting Up"

# Enter server directory
cd minecraft

# Perform initial setup
modPack=1710
modZip="the-$modPack-pack_${MOD_PACK_BUILD}.zip"

if [ ! -f "$modZip" ]; then
    echo "Downloading Mod Pack resources"
    urlPrefix=http://solder.endermedia.com/repository/downloads/the-$modPack-pack/$modZip
    
    echo "Fetching $urlPrefix"
    wget $urlPrefix
    unzip $modZip
fi

# Check and Accept EULA
if [ ! -f "eula.txt" ] && [ ${EULA} = true ]; then
    echo "Server first time boot, Accepting EULA"
    echo "eula=true" > eula.txt
fi

# Start Server
chmod +x LaunchServer.sh
./LaunchServer.sh
