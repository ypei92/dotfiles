#!/bin/bash

# Variables
YADM_URL="https://github.com/ypei92/dotfiles.git"
NERDFONT="FiraCode"
NERDFONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/$NERDFONT.zip"
FONT_DIR_LINUX="$HOME/.local/share/fonts/"
CONDA_URL="https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh"
CONDA_DIR="$HOME/libraries/miniconda3/"
CONDA_BASE_ENV="py310"

# Install system level dependencies
sudo apt update
sudo apt dist-upgrade
sudo apt install -y vim-nox git tmux lsd unzip fontconfig yadm python3 python3-dev pciutils cmake build-essential

# Prepare folder
cd $HOME
mkdir -p projects packages libraries scripts

# Setup dotfiles with or without yadm
if command -v "yadm" &> /dev/null; then
  echo "Dotfiles already manuully setup by yadm !"
else
  echo "Setup dotfiles via manual commands ..."
  mv .bashrc .bashrc_origin  # just in case
  git clone $YADM_URL $HOME/scripts
  cd $HOME/scripts
  mv .aliases .bashrc .dir_colors .gitconfig .inputrc .tmux.conf .vimrc $HOME/
  mv .bash-git-prompt .tmux .vim $HOME/
  if [ -d $HOME/.config ]; then
    mv .config/* $HOME/.config/
  else
    mv .config $HOME/
  fi
  rm -rf scripts/dotfiles
fi

# Install Nerdfont (depend on distro)
source $HOME/.bash-git-prompt/get_distro.sh
echo "Installing nerd-font FiraCode on $DISTRO ..."
wget -P $FONT_DIR_LINUX $NERDFONT_URL
unzip $FONT_DIR_LINUX/$NERDFONT.zip -d $FONT_DIR_LINUX
rm $FONT_DIR_LINUX/$NERDFONT.zip
fc-cache -fv

# Setup vim and tmux
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c PluginInstall -c q -c q
vim -c "source .vimrc" -c q
python3 ~/.vim/bundle/YouCompleteMe/install.py --clangd-completer --verbose  # conda won't work
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux new -d -s tmp "tmux source ~/.tmux.conf && ~/.tmux/plugins/tpm/scripts/install_plugins.sh"

# Setup Conda for Python Dev
echo "Setup miniconda3 ..."
mkdir -p $HOME/libraries/miniconda3
wget $CONDA_URL -O $CONDA_DIR/miniconda.sh
bash $CONDA_DIR/miniconda.sh -b -u -p $CONDA_DIR
rm -rf $HOME/libraries/miniconda3/miniconda.sh
$CONDA_DIR/bin/conda init bash
source $HOME/.bashrc
conda update -y conda
conda create -y -n $CONDA_BASE_ENV python=3.10
conda activate $CONDA_BASE_ENV
conda install -y -c conda-forge conda-bash-completion  # alternative: set defaults in .condarc
echo "conda activate $CONDA_BASE_ENV" >> ~/.bashrc
