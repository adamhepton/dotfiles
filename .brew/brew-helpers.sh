#!/bin/zsh
export DOTBREW="${HOME}/.brew"

update-brew-script () {
	[[ -f "${DOTBREW}/.brew-make.sh" ]] && ${DOTBREW}/.brew-make.sh > "${DOTBREW}/brew-install.sh"
	[[ $(whence config) ]] && config add "${DOTBREW}/brew-install.sh" && config commit -m "Updated brew-install.sh automatically" && config push -u origin && echo "\uF124 brew-install.sh file updated and pushed."
}

brew () {
  command brew "$@"

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
