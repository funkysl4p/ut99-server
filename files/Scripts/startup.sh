#!/bin/bash

# Prepare the custom data
python3 /prepare.py

# Copy /ut-server/SystemARM64 in /ut-server/System (overwrite)
cp -af /ut-server/SystemARM64/. /ut-server/System
rm -rf /ut-server/SystemARM64/

# Point to the correct directory
cd /ut-server/System

# Set correct executables
chmod +x ./ucc-bin
chmod +x ./ucc-bin-arm64

# Start server
# -lanplay
./ucc-bin server $UT_SERVERURL ini=UnrealTournament.ini log=ut.log -multihome=$UT_MULTIHOME -nohomedir
