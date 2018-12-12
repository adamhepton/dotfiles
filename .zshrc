# Path to your oh-my-zsh installation.
export ZSH=${HOME}/.oh-my-zsh
export HOMEBREW_GITHUB_API_TOKEN=201c6519d43d27ffa47aaa037d3b94f0e74d986e # Personal token with no scope only
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme

POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0B4'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0B6'

POWERLEVEL9K_DIR_BACKGROUND="208"
POWERLEVEL9K_DIR_HOME_BACKGROUND="208"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="208"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="208"
POWERLEVEL9K_DIR_ETC_BACKGROUND="208"

POWERLEVEL9K_DIR_FOREGROUND="011"
POWERLEVEL9K_DIR_HOME_FOREGROUND="011"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="011"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="011"
POWERLEVEL9K_DIR_ETC_FOREGROUND="011"
POWERLEVEL9K_DIR_PATH_SEPARATOR=$' \uE0B5 '

POWERLEVEL9K_VCS_CLEAN_FOREGROUND="honeydew2"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="lightgoldenrod2"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="hotpink"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="lightcyan1"

POWERLEVEL9K_HOME_FOLDER_ABBREVIATION=""
POWERLEVEL9K_HOME_SUB_ICON=$'\uF015'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs time)

COMPLETION_WAITING_DOTS="true"
plugins=(git node)

export SSH_KEY_PATH="~/.ssh/rsa_id"

[[ -f "/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]] && source "/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
[[ -f "${ZSH}/oh-my-zsh.sh" ]] && source "${ZSH}/oh-my-zsh.sh"
[[ -f "${HOME}/.aliases" ]] && source "${HOME}/.aliases"
[[ -f "${HOME}/.iterm2_shell_integration.zsh" ]] && source "${HOME}/.iterm2_shell_integration.zsh"
fpath=(/usr/local/share/zsh-completions $fpath)
