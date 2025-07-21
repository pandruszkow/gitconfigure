#!/bin/sh

echo "Warning! The script will overwrite replace all local .gitconfig."
echo "If this is not what you want, press Ctrl+C now to quit."
echo
echo "Press Enter to continue"
read pause #wait for Enter press

#Move aside existing .gitconfig files
if [ -f ~/.gitconfig ]; then
	mv ~/.gitconfig ~/.gitconfig.`date --iso-8601`.pre-managed
fi

#Move aside existing .gitconfig files
if [ -f "~/.gitconfig.local" ]; then
	mv "~/.gitconfig.local" "~/.gitconfig.local".`date --iso-8601`.pre-managed
fi


#Force-copy the machine-specific config (overwrites existing)
cp -f .gitconfig.local.new ~/.gitconfig.local

#Open nano to let user edit machine-specific config
nano ~/.gitconfig.local

#Hardlink the global config. This way, when changes are made to the config on this machine, the hidden repo is reading from the same file and changes can be tracked easily.
ln .gitconfig ~/.gitconfig
