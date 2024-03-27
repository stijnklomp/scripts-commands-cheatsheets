# Automatically add keys to SSH agent on startup

## Installation

### Start SSH agent and add keys on startup

Add the following to your `.bashrc` file:
*(Which in most cases can be found in your home directory `~/.bashrc`)*

```bash
# --------------------------------
# Automatically add existing SSH agent or create one if it doesn't exist already
# and add SSH keys from the SSH config file
# --------------------------------
function sshagent_findsockets {
    find /tmp -uid $(id -u) -type s -name agent.\* 2>/dev/null
}

function sshagent_testsocket {
    if [ ! -x "$(which ssh-add)" ] ; then
        echo "ssh-add is not available; agent testing aborted"
        return 1
    fi

    if [ X"$1" != X ] ; then
        export SSH_AUTH_SOCK=$1
    fi

    if [ X"$SSH_AUTH_SOCK" = X ] ; then
        return 2
    fi

    if [ -S $SSH_AUTH_SOCK ] ; then
        ssh-add -l > /dev/null
        if [ $? = 2 ] ; then
            echo "Socket $SSH_AUTH_SOCK is dead!  Deleting!"
            rm -f $SSH_AUTH_SOCK
            return 4
        else
            echo "Found ssh-agent $SSH_AUTH_SOCK"
            return 0
        fi
    else
        echo "$SSH_AUTH_SOCK is not a socket!"
        return 3
    fi
}

function sshagent_init {
    ssh agent sockets can be attached to a ssh daemon process or an
    # ssh-agent process.

    AGENTFOUND=0

    # Attempt to find and use the ssh-agent in the current environment
    if sshagent_testsocket ; then AGENTFOUND=1 ; fi

    # If there is no agent in the environment, search /tmp for
    # possible agents to reuse before starting a fresh ssh-agent
    # process.
    if [ $AGENTFOUND = 0 ] ; then
        for agentsocket in $(sshagent_findsockets) ; do
            if [ $AGENTFOUND != 0 ] ; then break ; fi
            if sshagent_testsocket $agentsocket ; then AGENTFOUND=1 ; fi
        done
    fi

    # If at this point we still haven't located an agent, it's time to
    # start a new one
    if [ $AGENTFOUND = 0 ] ; then
        eval `ssh-agent`
        for keyfile in $(grep -i "IdentityFile" ~/.ssh/config | awk '{print $2}')
        do
            ssh-add $keyfile
        done
    fi

    # Clean up
    unset AGENTFOUND
    unset agentsocket

    # Finally, show what keys are currently in the agent
    ssh-add -l
}

alias sagent="sshagent_init"
```

Run `sagent` in your terminal to activate the SSH agent.

### Add SSH config

Add the following to your SSH `config` file for every key you wish to automatically load:
*(Which in most cases can be found in your home directory at `~/.ssh/config`. You can create it yourself if it does not already exist)*

```bash
Host github
    HostName github.com
    IdentityFile /home/user/.ssh/github_private_key
    User git
    AddKeysToAgent yes
```

## Usage

Run `sagent` to create a new SSH agent or reuse an existing one. It will automatically add any keys from your SSH config file to the running SSH agent on first run.
*(Note that it may ask for a password for every key that requires it)*
