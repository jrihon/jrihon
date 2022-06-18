#!/bin/sh

# Pre-emptive call to have `/path/to/dirs` changed to an actual path
# Example :
#   I have a directory Projects that contains the name of each project. Every project itself has a directory named `Projects/*/articles`
#   Change `/path/to/dirs` to `path/to/Projects/*/articles` to effectuate the `find` command.
#
# When that is done, remove/comment the `echo` and `exit` command here below.
echo "Change `/path/to/dirs` to the actual path you want to go through."
exit




# Create local directory variable
local query

# Find all pdf files in the related articles directories
find /path/to/dirs -type f -iname "*.pdf" -print 2> /dev/null > $HOME/homebrew/query_pdf/list_of_paths

# Fuzzy find the one you want
/usr/bin/gnome-terminal --geometry 180x50 --wait -- bash -c \
    'query=$(cat $HOME/homebrew/query_pdf/list_of_paths | fzf +m > $HOME/homebrew/query_pdf/tmp_pdfname)'

# Open it in your prefered pdf reader
rm $HOME/homebrew/query_pdf/list_of_paths
cat $HOME/homebrew/query_pdf/tmp_pdfname | xargs -r evince &

