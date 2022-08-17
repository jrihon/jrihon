
# Jrihon

Hi there, a PhD student over at the laboratory of Medicinal Chemistry, Rega Institute for Medical Research at the KU Leuven.

Pharmaceutical Sciences with a degree in Drug Design and Development, turned towards computer sciences.\
I work primarily through numerical programming, scripting methods and predict biochemical reality through computational experiments.


## Research
My main focus is on the computational characterisation of nucleic acids and protein engineering\
 `comp chem` `comp bio` `(bio) informatics`\
 `chemistry` `linear algebra` `biology` `biotechnology`

I work through static and dynamic modeling approaches, with the intent on making biological systems suitable by predicting the viability of said systems.


## Online presence 
 - [ORCID](https://orcid.org/0000-0002-9207-1556)
 - [LinkedIn](www.linkedin.com/in/jérôme-rihon)
 - [Bibliography - Published Work](http://lirias.kuleuven.be/cv?Username=U0141262)


## Skills
- Author of `jrihon/mutineer.vim` : Commenting in Vim made easier
- `python 3`
- `(Neo)Vim`
- `LaTeX`
- `Shell`
- `.dotfile configuration`


## .dotfiles

### Nvim
Neovim configuration, written in Lua. Using LSP support and `cmp`-based completion engine.
<br/>
Build everything from source.
```
~/.config/nvim/ - init.lua
                - lua/jrihon/ - *.lua
                              - lsp/ - *.lua
                                     - settings/ *.lua
```


### Starship prompt
The `Starship` prompt is available over at [Starship](https://starship.rs/)

I use two different prompts. One for everyday and one for when I am inside TMUX. This to not confuse my workflow and to make myself aware I am working inside TMUX.


### TMUX

I recommend installing bash-completion and adding a tmux completion tool `imomaliev/tmux-bash-completion` to it to make it faster to work with tmux.<br/> 
I use tmux for a more rapid and easier workflow, to maintain the orientation of multiple projects at the same time. It is also much clearer than having several terminal tabs open.
<br/>
<br/>
I use the tmux-plugin manager `github.com/tmux-plugins/tpm` and the tmux-resurrect `tmux-plugins/tmux-resurrect` to save session in between system restarts.
<br/>
<br/>
I use a different configured Starship command prompt when in tmux. To do so, add this to your ~/.bashrc. This assumes a separate `starship.toml` file in your .config directory.
```sh
# Initiliase starship prompt for tmux
if [ -n "$TMUX" ]; then
    export STARSHIP_CONFIG=~/.config/tmux_starship.toml
fi
```


## Homebrew
A small repository of scripts I use day to day to ease the workflow.
- `query_pdf` : searches for pdf files on my system. Usually research papers.
- `search_directory` : `cd` into a prompted directory, usually deep into the system.
- `curl_pdb` : download a `*.pdb` file into the `cwd`, by prompting its filename.


## Acknowledgements
This README.md has been written with the help of [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)

  


