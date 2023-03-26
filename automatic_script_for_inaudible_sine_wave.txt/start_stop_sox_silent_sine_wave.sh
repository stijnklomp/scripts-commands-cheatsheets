#!/bin/bash

# Check if the SoX command is already running
if pgrep play >/dev/null 2>&1 ; then
	echo "SoX command is already running. Stopping it..."
	# Stop the SoX command
	pkill play
else
	echo "Starting SoX command..."
	# Start the SoX command in the background and ignore the hangup signal using nohup
	nohup play -d -n synth sine 1 vol -60dB remix 1,2 >/dev/null 2>&1 &
	echo "SoX command started with PID $!"
fi

