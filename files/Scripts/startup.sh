#!/bin/bash

# Prepare the custom data
python3 /prepare.py

# Point to the correct directory
cd /ut-server/System

# Start server
./ucc-bin server $UT_SERVERURL ini=UnrealTournament.ini log=ut.log -nohomedir -lanplay
