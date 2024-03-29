#!/bin/zsh

brew update &> /dev/null

echo "#!/bin/bash"
echo "$(cat ${DOTBREW}/.brew-head.txt)"

echo
echo "echo \"Adding taps\""
for TAP in $(brew tap); do
  echo "brew tap $TAP"
done

echo
echo "echo \"Adding formulae\""
for FORMULA in $(brew list); do
  echo "brew install $FORMULA"
done
