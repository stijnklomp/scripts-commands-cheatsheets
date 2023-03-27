# Automatically add keys to ssh agent on startup

## Installation

### Start ssh agent and add keys on startup

Add the following to your `.bashrc` file:
*(Which in most cases can be found in your home directory `~/.bashrc`)*

```bash
# Automatically start SSH agent and add private keys listed in the SSSH config file
if [ ! -f ~/.ssh/config ] || ! cat ~/.ssh/config | grep AddKeysToAgent | grep yes > /dev/null; then
    echo "AddKeysToAgent  yes" >> ~/.ssh/config
fi

if [ ! -S ~/.ssh/ssh_auth_sock ]; then
    eval `ssh-agent`
    ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock

# Add all identities from SSH config file
for keyfile in $(grep -i "IdentityFile" ~/.ssh/config | awk '{print $2}')
do
    ssh-add $keyfile
done
```

Add the following to your `.bash_logout` file:

```bash
# Kill ssh agent
if [ -n "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent -k`
fi
```

### Add ssh config

Add the following to your ssh `config` file for every key you wish to automatically load:
*(Which in most cases can be found in your home directory at `~/.ssh/config`.
        You can create it yourself if it does not already exist)*

```bash
Host github
    HostName github.com
    IdentityFile /home/user/.ssh/github_private_key
    User git
    AddKeysToAgent yes
```

## Usage

It will automatically add any keys from your ssh config file to the running ssh agent on startup.
*(Note that it may ask for a password for every key that requires it)*
