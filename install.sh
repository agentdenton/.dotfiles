#!/bin/bash

rm -rf ~/.zshrc
rm -rf ~/.bashrc
rm -rf ~/.tmux.conf
rm -rf ~/.config/fish
rm -rf ~/.config/rofi
rm -rf ~/.config/dunst
rm -rf ~/.config/zathura
rm -rf ~/.config/alacritty
rm -rf ~/.config/starship.toml

mkdir -p ~/.config
mkdir -p ~/.config/fish
mkdir -p ~/.config/rofi
mkdir -p ~/.config/dunst
mkdir -p ~/.config/zathura
mkdir -p ~/.config/alacritty

ln -s ~/.dotfiles/nvim ~/.config/
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/dunstrc ~/.config/dunst/dunstrc
ln -s ~/.dotfiles/zathurarc ~/.config/zathura/zathurarc
ln -s ~/.dotfiles/config.rasi ~/.config/rofi/config.rasi
ln -s ~/.dotfiles/starship.toml ~/.config/starship.toml
ln -s ~/.dotfiles/config.fish ~/.config/fish/config.fish
