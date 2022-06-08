# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to oh-my-zsh 
export ZSH=${HOME}/.oh-my-zsh
zstyle ':omz:update' mode auto
plugins=(
    zsh-autosuggestions
    dirhistory
    macos
    asdf
)

# Homebrew stuff
path+=('/opt/homebrew/bin/')

export SSH_KEY_PATH="~/.ssh/rsa_id"

[[ -f "/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]] && source "/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
[[ -f "${ZSH}/oh-my-zsh.sh" ]] && source "${ZSH}/oh-my-zsh.sh"
[[ -f "${HOME}/.aliases" ]] && source "${HOME}/.aliases"
[[ -f "${HOME}/.private" ]] && source "${HOME}/.private"
[[ -f "${HOME}/.iterm2_shell_integration.zsh" ]] && source "${HOME}/.iterm2_shell_integration.zsh"
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -Uz compinit && compinit

source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
