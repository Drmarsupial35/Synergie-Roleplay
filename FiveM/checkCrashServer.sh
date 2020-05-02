#!/bin/bash

#config
HOST=185.44.81.48
PORT=44814

#script
# timeout 2 bash -c "</dev/tcp/$HOST/$PORT";

(exec 3<>/dev/tcp/$HOST/$PORT) &>/dev/null

if [ $? -ne 0 ];
then
    echo `date '+%d-%B-%Y_%H:%M:%S'` " - Detected server crash!"
	echo "launching server again:"
	bash /home/fivem/Synergie-Roleplay/FiveM/reload_fxserver.sh
# else 
	# echo `date '+%d-%B-%Y_%H:%M:%S'` " - Server on!"
fi
