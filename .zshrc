export ZSH="$HOME/.oh-my-zsh"
export USE_GKE_GCLOUD_AUTH_PLUGIN=True
ZSH_THEME="simple"
plugins=(git kube-ps1)

source $ZSH/oh-my-zsh.sh

[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

alias pcat='pygmentize -f terminal256 -O style=native -g'

complete -o default -F __start_kubectl k
PS1='$(kube_ps1)'$PS1
kubeoff

export NVM_DIR="$HOME/.nvm"

# Lazy load NVM for faster shell startup
nvm() {
    unset -f nvm
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
    nvm "$@"
}
export PATH="/opt/homebrew/opt/gnu-getopt/bin:$PATH"


source ~/.docker/init-zsh.sh || true # Added by Docker Desktop

[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f ~/Downloads/google-cloud-sdk/path.zsh.inc ]; then . ~/Downloads/google-cloud-sdk/path.zsh.inc; fi

# The next line enables shell command completion for gcloud.
if [ -f ~/Downloads/google-cloud-sdk/completion.zsh.inc ]; then . ~/Downloads/google-cloud-sdk/completion.zsh.inc; fi

export BAT_THEME=ansi
eval "$(starship init zsh)"

# Enable productive tools
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"
eval "$(thefuck --alias)"

# iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
