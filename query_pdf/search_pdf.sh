#!/bin/sh

# This script assumes fzf (fuzzyfinder) is correctly installed.
# If fzf is build from source, explicitly call the fzf executable from that path

# Example of a path : $HOME/Publications/*/articles
#           The wildstar in the pathname is because the Publications/ directory contains multiples projects that all have an articles/ directory with pdf files 


# Find the pdf we are looking for, with fuzzyfinder and store the path in a variable
find $HOME/Desktop/Publicaties/*/articles  -type f -iname '*.pdf' | fzf > $HOME/query_pdf/tmp_pdfname

