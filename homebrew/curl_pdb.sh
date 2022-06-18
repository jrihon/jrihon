#!/bin/env bash

# save this file somewhere on your system, chmod +x, and alias this to access anywhere on your system


# Enter the pdb code of the file you want to download through CLI and save it instanteniously
curl https://files.rcsb.org/view/$1.pdb > ./$1.pdb

