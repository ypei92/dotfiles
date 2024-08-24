# Dotfiles when setting up new macOS/Linux systems

Including catalog:
**.vim**
**.tmux**
**.bashrc**
**.bash_prompt ([bash-git-prompt](https://github.com/magicmonty/bash-git-prompt))**
**.gitconfig**
**.inputrc**
**.aliases**
**.config**

***08/22/24 update***:
1. Re-arrange files to use [yadm](https://yadm.io/)
2. Add scripts to cover auto and manual setup stages of Debian-based OS
3. Add scripts to setup Debian-based LXC templates

***08/15/24 update***:
1. Choose vim truecolor theme to base16_harmonic16
2. Match tmux truecolor theme to vim
3. Condition vim color setting to be conditioned on `$COLORTERM`
4. Condition tmux color setting to be conditioned on `$COLORTERM`
5. Add [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)
6. Enable Cygwin truecolor and solve compatibility issues
7. Add scripts folder to record efforts of building from source

***08/11/24 update***:
1. Add truecolors setting for terminal env, Vim and Tmux
2. Add solarized8.vim as the new color theme
3. Add get_distro.sh to get OS distro name -> if-statement conditioning on distro names, e.g. prompt distro icon
4. Set up `lsd` [(LSDeluxe)](https://github.com/lsd-rs/lsd), update aliases
5. Update `.vimrc`: ruler highlight, truecolor setting
6. Finalize prompt design (mainly color, placement and icon)

***08/04/24*** update:
1. Incorporate oh-my-bash aliases to `.aliases`
2. Update to the latest bash-git-prompt and dracula.tmux (both customized)
3. Minor updates

***12/20/23*** update:
Refine scripts

***10/15/21*** update:
Add YouCompleteMe to vim; update .vimrc by adding commands using coabbrev
Add bash-completion to bash, update macOS LSCOLORS;
Add plugins to tmux: tpm, sidebar, resurrect, customized dracula theme
