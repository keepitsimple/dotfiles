# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $(brew --prefix)/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pj
antigen bundle darvid/zsh-poetry
#antigen bundle heroku
#antigen bundle pip
#antigen bundle lein
#antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# FZF integration
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle 'wfxr/forgit'

# Load the theme.
#antigen theme robbyrussell
#antigen theme risto
antigen theme romkatv/powerlevel10k

# fast node manager
antigen bundle dominik-schwabe/zsh-fnm

# Tell Antigen that you're done.
antigen apply

SAVEHIST=10000
export NODE_OPTIONS=--max-old-space-size=8192

# pj list of projects
PROJECT_PATHS=(~/work ~/work/rv ~/work/rv/tdp ~/invest ~/invest/my )

alias tree='tree --gitignore'
alias todo='vim ~/Desktop/general.todo.md'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/openjdk/bin:$PATH"
