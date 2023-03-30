# Automatic script for inaudible sine wave

## Prerequisites

Install pgrep if it is not already installed:
```Bash
sudo apt-get install procps
```

#### If using WSL

Install SoX handlers for other audio formats:
*(This is needed so that the default audio device and driver can be found)*
```Bash
sudo apt install libsox-fmt-all
```

## Installation

Make the script executable:
```Bash
chmod 551 start_stop_sox_silent_since_wave.sh
```

## Usage

Start/Stop the sine wave:
```Bash
./start_stop_sox_silent_since_wave.sh
```
