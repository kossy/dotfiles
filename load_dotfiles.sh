#!/bin/sh
# Script to stow all dotfiles
echo "Loading in dotfiles..."

# Stow bash
echo "bash..."
stow bash

# Stow tmux
echo "tmux..."
stow tmux

# Stow git
echo "git..."
stow git

# Stow i3
echo "i3..."
stow i3
