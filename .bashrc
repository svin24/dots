# .bashrc
prompt_color_force=true
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi
export GOPATH=$HOME/.local/share/go/

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
#PATH="$PATH:$HOME/.local/share/go/bin"
PATH="$PATH:$HOME/.local/share/zig/"
PATH="$PATH:$HOME/.cargo/bin"
PATH="$PATH:$HOME/.npm-global/bin/"
PATH="$PATH:/var/lib/flatpak/exports/bin/"
PATH="$PATH:$GOPATH/bin"
export PATH
alias vim="nvim"
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
