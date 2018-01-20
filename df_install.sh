#!/bin/bash
# This script creates symlinks for dotfiles


echo "Installing dotfiles..."

DIR=$PWD

# create symlinks

ln -sf $DIR/ vimrc ~/.vimrc
ln -sf $DIR/ bashrc ~/.bashrc
ln -sf $DIR/ bash_profile ~/.bash_profile
ln -sf $DIR/ vimrc ~/.vimrc
ln -sf $DIR/ viminfo ~/.viminfo
ln -sf $DIR/ w3m ~/.w3m
ln -sf $DIR/ vimrc ~/.vimrc

echo "Installation complete! Please logout or reboot."
