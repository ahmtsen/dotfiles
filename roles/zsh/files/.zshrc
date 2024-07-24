source ~/.antigen/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh
source /opt/homebrew/share/antigen/antigen.zsh

DISABLE_UNTRACKED_FILES_DIRTY="true"
ENABLE_CORRECTION="false"
export SEGMENT_TEAM="app"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

# load the oh-my-zsh library
antigen use oh-my-zsh

# bundles from the default repo (robbyrussell's oh-my-zsh)
antigen bundle git
antigen bundle lein
antigen bundle pip
antigen bundle command-not-found
antigen bundle history
antigen bundle github
antigen bundle common-aliases
antigen bundle compleat
antigen bundle colorize
antigen bundle git-extras
antigen bundle brew
antigen bundle npm
antigen bundle osx
antigen bundle z

# syntax auto-completion
antigen bundle zsh-users/zsh-completions

# syntax highlighting bundle
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen bundle zsh-users/zsh-history-substring-search

# zsh vi mode
antigen bundle jeffreytse/zsh-vi-mode

antigen theme robbyrussell

antigen apply

# set the default editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='nvim'
fi

# load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# auto Detect .nvmrc files
# https://github.com/creationix/nvm#zsh
# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# alias definitions
alias cat="bat --theme='catppuccin-mocha'"
alias vim="nvim"
alias ls="lsd"
alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'

# initialize fzf
source <(fzf --zsh)

# initialize starship
eval "$(starship init zsh)"

# intialize zoxide
eval "$(zoxide init zsh --cmd cd)"
