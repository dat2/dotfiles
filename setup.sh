#!/bin/sh

# Increase key repeat rate
defaults write -g InitialKeyRepeat -int 10  # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1          # normal minimum is 2 (30 ms)
defaults write -g ApplePressAndHoldEnabled -bool false

# git-delta
git config --global core.pager delta
git config --global interactive.diffFilter 'delta --color-only'
git config --global delta.navigate true
git config --global merge.conflictStyle zdiff3
