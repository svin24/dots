# .bashrc
prompt_color_force=1
export PS1="\[\033[01;31m\]bee\[\033[01;34m\] \w \$\[\033[00m\] "
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export GOPATH="$HOME/.go"
export BUN_INSTALL="$HOME/.bun"
. "/home/john/.deno/env"
. "$HOME/.cargo/env"
PATH=$BUN_INSTALL/bin:$PATH
PATH="$PATH:$GOPATH/bin"
PATH="$PATH:$HOME/.npm-global/bin/"
PATH="$PATH:/var/lib/flatpak/exports/bin/"
#MASON
PATH="$PATH:$HOME/.local/share/nvim/mason/bin/"
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

alias vim="nvim"
#fastfetch

