#!/bin/zsh
export DOTBREW="${HOME}/.brew"

update-brew-script () {
	[[ -f "${DOTBREW}/.brew-make.sh" ]] && ${DOTBREW}/.brew-make.sh > "${DOTBREW}/brew-install.sh"
  if [[ $(whence config) ]]; then
    config add "${DOTBREW}/brew-install.sh" &> /dev/null
    config commit -m "Updated brew-install.sh automatically" &> /dev/null
    config-push
    echo "\uF124 brew-install.sh file updated and pushed."
  fi
}

brew () {
  command brew "$@"
  doupdate=false

	if [[ ( "$1" == "install" || "$1" == "uninstall" ) && -n "$2" ]]; then
		doupdate=true
	fi
	if [[ "$1" == "cask" && ( "$2" == "install" || "$2" == "uninstall" ) && -n "$3" ]]; then
		doupdate=true
	fi
	if [[ "$1" == "tap" && -n "$2" ]]; then
		doupdate=true
	fi

	if [[ ${doupdate} == true ]]; then
		update-brew-script
	fi
}
