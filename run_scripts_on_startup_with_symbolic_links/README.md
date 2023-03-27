# Automatically add keys to SSH agent on startup

## Installation

### Create a symbolic link to an executable script

### `chmod +x startup.sh`

Make sure your script is executable.

### `sudo ln -s ./startup.sh /etc/init.d/`

Next, create a symbolic link to the script file in the `/etc/init.d/`.

### `sudo update-rc.d startup.sh defaults`

Finally, update the system's startup sequence.

## Usage

### See all created symbolic links

### `ls -l /etc/init.d/`

List all files in the `/etc/init.d/` directory, including any symbolic links.

### `readlink -f /etc/init.d/startup.sh`

Display the absolute path to the file that the symbolic link points to.

### Automatically load scripts on startup

Any symbolically linked files that are in the `/etc/init.d/` directory are automatically executed on startup.
