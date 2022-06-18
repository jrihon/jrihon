# Search Directory
Easy searching for a directory somewhere deep in the system.</br>
Type in your query and you will `cd` immediately into the directory

### Keybound scripts
I have bound the script to the following key : 

`CTRL + ALT + C` : `bash $HOME/homebrew/search_directory/gotodirectory.sh`    <br/>

On Ubuntu, and Ubuntu-based distributions, you can find it here ;<br/>
Settings > Customize Shortcuts > Custom Shortcuts > Add Custom Shortcuts

### How to use
`CTRL + ALT + C` prompts a terminal with a list of all the pdf names in the current searched path (read from a file, `cat` piped into `fzf`).</br>
You type in the name of the pdf file you are trying to find and return that.</br>
This closes the current terminal and opens a new one already in the prompted directory.


### Paths
The script assumes the directory `$HOME/homebrew/search_directory/` exists. Change this to your own liking. </br>
</br>
Change the search path from which the `find` command starts if you like. You can also change specific flags by which `find` runs.


## Credits
Credits to Bartold (Mithra).
