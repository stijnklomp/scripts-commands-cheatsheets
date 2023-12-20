# Git auto-complete for branches

## Installation

Add the following to your `.bashrc` file:
*(Which in most cases can be found in your home directory `~/.bashrc`)*

```bash
# --------------------------------
# Git auto-complete for branches
# --------------------------------
test -f ~/.git-completion.bash && . $_
```

Add the following in your terminal:
```bash
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
```

## Usage

Hit the `tab` key when you've entered the first part/character of a branch name and it will auto-complete the branch name if it can be located.
