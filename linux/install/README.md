# Linux Executable Provenance Guide

## Quick heuristics

/usr/bin => APT
/usr/local/bin => Manual
/snap/bin => Snap
~/.local/bin => User
~/.cargo/bin => Rust
~/go/bin => Go
/home/linuxbrew => Homebrew

## First principles

```sh
which <cmd> # Primary path
readlink -f (which <cmd>) # Resolves symlinks
type -a <cmd> # Shows Shadowed binaries
```

## Debian

```sh
curl -LO <link-to-deb-package>

# Install
sudo dpkg -i <deb-package>

# Uninstall
sudo dpkg -r <deb-package>

# Info
dpkg --info <deb-package>

# Install location
dpkg -L <package-name>
```

## Tarball

```sh
curl -LO <link-to-tar>

# Install
sudo tar -xvzf <tar> -C /usr/local/bin/

# Unfold
sudo tar -xzf file.tar.gz
```

## Zip

```sh
unzip file.zip
```

## APT / dpkg

Paths:
- /usr/bin/<cmd>
- /usr/sbin/<cmd>
- /bin/<cmd>
- /sbin/<cmd>

```sh
# Verify
dpkg -S /path/to/cmd

# Inspect
apt-cache policy <package>

# Update
sudo apt update
sudo apt install --only-upgrade <package>

# Remove
sudo apt remove <package>
sudo apt purge <package>
```

## Snap

Path:
- /snap/bin/<cmd>

```sh
# Verify
snap list

# Update
sudo snap refresh <package>

# Remove
sudo snap remove <package>
```

## Flatpak

```sh
# Verify
flatpak list

# Update
flatpak update

# Remove
flatpak uninstall <app>
```

## Manual install

Paths:
- /usr/local/bin/<cmd>
- /usr/local/sbin/<cmd>

```sh
# Verify
dpkg -S /usr/local/bin/<cmd>

# Remove
sudo rm /usr/local/bin/<cmd>
```

## User-local

Paths:
- ~/.local/bin/<cmd>
- ~/bin/<cmd>

## Python (pip / pipx)

```sh
# Verify
pip show <package>
pipx list

# Update
pip install --upgrade <package>
pipx upgrade <package>

# Remove
pip uninstall <package>
pipx uninstall <package>
```

## Cargo (Rust)

Path:
- ~/.cargo/bin/<cmd>

```sh
# Verify
cargo install --list

# Update
cargo install <package>

# Remove
cargo uninstall <package>
```

## Go

Path:
- ~/go/bin/<cmd>

```sh
# Update
go install <module>@latest

# Remove
rm ~/go/bin/<cmd>
```

## Homebrew

Path:
- /home/linuxbrew/.linuxbrew/bin/<cmd>

```sh
# Verify
brew list

# Update
brew upgrade <package>

# Remove
brew remove <package>
```
