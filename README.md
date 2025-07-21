![Creative Commons CC-0 v1.0 license logo (small)](https://licensebuttons.net/p/zero/1.0/80x15.png)

# gitconfigure
Portable Gitconfigure setup. Sensible aliases and Linux/Windows/Mac support. Not good enough autocompletion support yet.

## Installation instructions (fully automatic)
**MAKE SURE YOU GENERATE AN SSH KEY ON THE NEW MACHINE AND [ADD IT TO GITHUB SETTINGS](https://github.com/settings/ssh/new)

```sh
mkdir -p ~/.local/share/gitconfigure && \
cd .local/share/gitconfigure && \
git clone git@github.com:pandruszkow/gitconfigure.git . && \
./install.sh && \
echo "Installation done for .gitconfigure on $(date -Iseconds)"
```

## Installation instructions (manual)
**MAKE SURE YOU GENERATE AN SSH KEY ON THE NEW MACHINE AND [ADD IT TO GITHUB SETTINGS](https://github.com/settings/ssh/new)

1. Install Git
1. Check out this repository to `.local/share/gitconfig` and `cd` to that
1. Run `./install.sh`
1. When the editor is opened, update contents of `.gitconfig.local` to reflect your Git identity on this particular machine/account. This file is added to .gitignore so that your local details will not be a part of any subsequent changes you may want to make to your `.gitconfig`.
