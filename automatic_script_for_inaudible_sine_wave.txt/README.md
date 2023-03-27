# Automatic script for inaudible sine wave

## Prerequisites

### `sudo apt-get install procps`

Install pgrep if it is not already installed.

##### *If using WSL*

### `sudo apt install libsox-fmt-all`

 Install SoX handlers for other audio formats.
 *(This is needed so that the default audio device and driver can be found)*

 ## Installation

 ### `chmod 551 start_stop_sox_silent_since_wave.sh`

 Make the script executable

 ## Usage

 ### `./start_stop_sox_silent_since_wave.sh`

 Start/Stop the sine wave
