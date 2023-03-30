utomatically add keys to SSH agent on startup

## Installation

### Create a symbolic link to an executable script

Make sure your script is executable:
```Bash
chmod +x startup.sh
```

Next, create a symbolic link to the script file in the `/etc/init.d/`:
```Bash
sudo ln -s /absolute/path/startup.sh /etc/init.d/
```

Finally, update the system's startup sequence:
```Bash
sudo update-rc.d startup.sh defaultsreated symbolic links

List all files in the `/etc/init.d/` directory, including any symbolic links:
```Bash
ls -l /etc/init.d/
```

Display the absolute path to the file that the symbolic link points to:
```Bash
readlink -f /etc/init.d/startup.sh
```

### Automatically load scripts on startup

Any symbolically linked files that are in the `/etc/init.d/` directory are automatically executed on startup.
