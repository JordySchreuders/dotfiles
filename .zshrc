export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH="$HOME/.local/bin:$PATH"

# -----------------------------------------------------------------------------
# Zshell and oh-my-zsh
# -----------------------------------------------------------------------------

export ZSH=$HOME/.oh-my-zsh

plugins=(git pow ssh-agent)                   # standard oh-my-zsh plugins
ZSH_THEME=juanghurtado                        # the lovely juang hurtado
COMPLETION_WAITING_DOTS="true"                # display red dots awaiting completion of executed command

unsetopt beep

# -----------------------------------------------------------------------------
# SSH - The SSH agent is managed by the ssh-agent plugin for oh-my-zsh
# -----------------------------------------------------------------------------

zstyle :omz:plugins:ssh-agent identities blade_github_rsa blade_gitlab_rsa blade_codepot_rsa

# -----------------------------------------------------------------------------
# Programming Environment Managers
# -----------------------------------------------------------------------------

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PATH="$(yarn global bin):$PATH"

# -----------------------------------------------------------------------------
# Programming Environments and DBMS
# -----------------------------------------------------------------------------

# python
APP_ENV=dev
PYTHONDONTWRITEBYTECODE="true"

# pgsql
export PGUSER=postgres


# -----------------------------------------------------------------------------
# WSL - Microsoft subsystem for Linux
# -----------------------------------------------------------------------------
export DOCKER_HOST=tcp://0.0.0.0:2375
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"


# -----------------------------------------------------------------------------
# Post Setup
# -----------------------------------------------------------------------------

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases
