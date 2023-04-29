# Created by Zap installer
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"
plug "zap-zsh/supercharge"
plug "zdharma-continuum/fast-syntax-highlighting"
plug "jeffreytse/zsh-vi-mode"
plug "hlissner/zsh-autopair"
plug "spaceship-prompt/spaceship-prompt"
plug "zshzoo/cd-ls"

ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
eval "$(zellij setup --generate-auto-start zsh)"
eval "$(zoxide init zsh)"

alias v=lvim
alias ls="exa --icons"
alias ll="exa --icons -lh "
alias la="exa --icons -a"
alias lla="exa --icons -alh "
alias zzz="lvim ~/.zshrc"


