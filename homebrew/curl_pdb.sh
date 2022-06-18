#!/bin/env bash

# Enter the pdb code of the file you want to download and save it instanteniously
curl https://files.rcsb.org/view/$1.pdb > ./$1.pdb
