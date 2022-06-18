# Query PDF

### Keybound scripts
I have bound the script to the following key : 

`Super + R` : `bash $HOME/homebrew/query_pdf/search_pdf.sh`    <br/>

On Ubuntu, and Ubuntu-based distributions, you can find it here ;<br/>
Settings > Customize Shortcuts > Custom Shortcuts > Add Custom Shortcuts

### How to use
`Super + R` prompts a terminal with a list of all the pdf names in the current searched path (read from a file, `cat` into piped `fzf`).</br>
You type in the name of the pdf file you are trying to find and return that. </br>
This opens the prompted file.pdf into your preferred pdf reader. Defaults to `evince`.


# Added info
The script assumes the directory `$HOME/homebrew/query_pdf/` exists. Change this to your own liking. </br>

I have a directory Projects that contains the name of each project. Every project itself has a directory named `Projects/*/articles`
Change `/path/to/dirs` to `path/to/Projects/*/articles` to effectuate the `find` command.

When that is done, remove/comment the `echo` and `exit` commands.
