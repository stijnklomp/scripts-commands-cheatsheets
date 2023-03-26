# Automatic script for inaudible sine wave

## Prerequisites

### `sudo apt-get install procps`

Install pgrep if it is not already installed.

### `sudo apt install libsox-fmt-all`

*(If using WSL)* Install SoX handlers for other audio formats.
*(This is needed so that the default audio device and driver can be found)*

## Installation

Save the following script to a file (e.g, **`start_stop_sox_silent_since_wave.sh`**).

```bash
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
```

Make it executable using **`chmod 551 start_stop_sox_silent_since_wave.sh`**.

