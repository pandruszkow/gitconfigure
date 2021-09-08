#!/bin/sh

echo "Warning! The script will overwrite all local .gitconfig. If this is now what you want, press Ctrl+C now to quit."
echo
echo "Press Enter to continue"
read #wait for Enter press

#Force-copy the machine-specific config (overwrites existing)
cp --force .gitconfig.local.new ~/.gitconfig.local

#Open nano to let user edit machine-specific config
nano ~/.gitconfig.local

#Force-hardlink the global config. This way, when changes are made to the config on this machine, the hidden repo is reading from the same file and changes can be tracked easily.
ln --force .gitconfig ~
