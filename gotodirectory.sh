#!/bin/bash

# Create local directory variable
local dir

# Assumes directory .homebrew_scripts/ and .homebrew_scripts/search_directory/ exist. These are just personal choices not to overrun
#  my $HOME directory
# Open a terminal and pipe the `find all non-hidden directories in $HOME and pipe that into a file`
/usr/bin/gnome-terminal --wait -- bash -c \
   'dir=$(find . -not -path $HOME -type d -print 2> /dev/null | fzf +m > $HOME/.homebrew_scripts/search_directory/dir.txt)'

# Read the contents of the file, change the `.` symbol by $HOME and open the directory in a terminal
dir=`cat $HOME/.homebrew_scripts/search_directory/dir.txt | sed -e "s|\.|$HOME|g"` &&  /usr/bin/gnome-terminal --working-directory=$dir

# Bind this script to a hotkey by going `bash $HOME/.homebrew_scripts/search_directory/gotodirectory.sh` to get quick access
