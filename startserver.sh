#!/bin/bash
cd /home/public/server
function run {
			   sudo updatecontainers.sh &
			   sudo killidlecontainers.sh &
			   sudo serverstats.sh &
               sudo jupyterhub
           }

until run; do
    echo "Server 'jupyter' crashed with exit code $?.  Respawning.." >&2
    sleep 1
done
