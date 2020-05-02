#!/bin/bash

#config
FXSERVERDATA=/home/fivem/Synergie-Roleplay/FiveM/server-data
FXSERVER=/home/fivem/Synergie-Roleplay/FiveM

#script
echo `date '+%d-%B-%Y_%H:%M:%S'`" - launching server..."
sleep 2
cd $FXSERVERDATA
bash $FXSERVER/run.sh +exec server.cfg
