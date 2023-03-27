# Automatically add keys to SSH agent on startup

## Installation

### Start SSH agent and add keys on startup

Add the following to your `.bashrc` file:
*(Which in most cases can be found in your home directory `~/.bashrc`)*

```bash
# Automatically start SSH agent and add private keys listed in the SSH config file
if pgrep -u $USER -n ssh-agent > /dev/null; then
    test -z "$SSH_AGENT_PID" && export SSH_AGENT_PID=$(pgrep -u $USER -n ssh-agent)
    test -z "$SSH_AUTH_SOCK" && export SSH_AUTH_SOCK=$(ls /tmp/ssh-*/agent.$(($SSH_AGENT_PID-1)))

    echo "Using existing SSH agent with pid: "${SSH_AGENT_PID}
else
    # Launch new SSH agent
    eval $(ssh-agent -s)

    # Add all identities from SSH config file
    for keyfile in $(grep -i "IdentityFile" ~/.ssh/config | awk '{print $2}')
    do
        ssh-add $keyfile
    done
fi
```

Add the following to your `.bash_logout` file:
*(This will kill the running SSH agent when you exit the terminal)*

```bash
# Kill running SSH agent
if [ -n "$(pgrep -u $USER -n ssh-agent)" ] ; then
    kill $(pgrep -u $USER -n ssh-agent) 
fi
```

### Add SSH config

Add the following to your SSH `config` file for every key you wish to automatically load:
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

It will automatically add any keys from your SSH config file to the running SSH agent on startup.
*(Note that it may ask for a password for every key that requires it)*
