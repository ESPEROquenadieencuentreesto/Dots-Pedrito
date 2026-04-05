source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey '^[[A' up-line-or-beginning-search # Flecha Arriba
bindkey '^[[B' down-line-or-beginning-search # Flecha Abajo

export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'

HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE
setopt CORRECT
setopt INC_APPEND_HISTORY

export PATH="$HOME/.local/bin:$HOME/.cabal/bin:$PATH"

alias swayy='dbus-run-session sway'
alias nirii='dbus-run-session niri'
alias matrix='unimatrix -s 97'
alias fast='fastfetch'
alias fastt='fastfetch --config ~/.config/fastfetch/config2.jsonc'
alias spotify='flatpak run com.spotify.Client --enable-features=UseOzonePlatform --ozone-platform=wayland'

PROMPT_EOL_MARK=""
EDITOR=nano

export PATH=$PATH:/home/pedrito/.spicetify
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
