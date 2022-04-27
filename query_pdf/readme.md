# Practical
## The scripts
The `actuate_search_pdf.sh` and the `read_pdf.sh` are bound to keys. 
The `search_pdf.sh` script is ran by the `actuate_search_pdf.sh` because I could not get it all to work in two scripts.

# Keybound scripts
I have bound the following to the following keys : 

Super + I : `bash $HOME/query_pdf/actuate_search_pdf.sh`    (findPDF)<br/>
Super + R : `bash $HOME/query_pdf/read_pdf.sh`              (readPDF)

On Ubuntu, and Ubuntu-based distributions, you can find it here ;<br/>
Settings > Customize Shortcuts > Custom Shortcuts > Add Custom Shortcuts


# How to use
`* chmod a+x SCRIPT`
Add executable permissions to the scripts in order for them to work.

`Super + I` generates a terminal with a list of all the pdf names in the current searched path
You type in the name of the pdf file you are trying to find. Press ENTER (return) when you have found the file you were looking for.
This echoes the name into the `tmp_pdfname` txt file

`Super + R` pipes the name the pdf you want to read and opens up the pdf through the pdf viewer


# Nota bene
All paths and filenames have been hardcoded and assume the `queryname/` directory to be in the `$HOME` directory. Change this to your own liking.

Especially change the path to the directory with the pdfs in them, in the `search_pdf.sh` !
# Credits
Credits to Bartold (Mithra). This was not my idea nor did I execute it, but damn it is this useful as all heck.
