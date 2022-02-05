#!/bin/sh

# Cat the contents of the tmp_pdfname, which will be the name of the pdf you have queried
# xargs it into evince, the default ubuntu pdf reader

cat $HOME/query_pdf/tmp_pdfname | xargs -r evince &
