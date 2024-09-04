# Install software

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
sudo tar xvzf <tar> -C /usr/local/bin/ tkn
```
