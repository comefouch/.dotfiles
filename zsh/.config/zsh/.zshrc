source "$HOME/.cargo/env"


setopt autocd extendedglob nomatch menucomplete
setopt correctall
setopt interactive_comments
setopt PROMPT_SUBST
setopt appendhistory
unsetopt BEEP

autoload -Uz compinit
compinit
stty stop undef


autoload -U promptinit
promptinit

source "$ZDOTDIR/zsh-functions"

zsh_add_file "zsh-aliases"
zsh_add_file "zsh-exports"
zsh_add_file "zsh-prompt"
zsh_add_file "zsh-vim-mode"


export BROWSER="librewolf"
export CHROME_EXECUTABLE="/usr/bin/chromium"
export EDITOR="nvim";
export TERMINAL="kitty"
export VISUAL="nvim";

zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "agkozak/zsh-z"

zstyle ':completion:*' menu select
