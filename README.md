
# Jrihon

Hi there, a PhD student over at the lab of Medicinal Chemistry @Rega Institute for Medical Research in Leuven. 
Contracted by the Catholic University of Leuven (KU Leuven).\
I've studied Pharmaceutical Sciences, with a master degree in Drug Design and Development, and decided to completely switch it up and go towards the computational sciences. I've quite quickly grown fond of exploring and exploiting research methods through computational methods, during my master thesis, that I was very intent on continuing research in this field. I work primarily through numerical programming, scripting methods and predict biochemical reality through computational experiments.
<br/>
<br/>

## Research
My main focus is on the computational characterisation of nucleic acids and protein engineering\
 `comp chem` `comp bio` `bio informatics`\
 `chemistry` `biology` `biotechnology`

I work through static and dynamic modeling approaches, with the intent on making biological systems suitable by predicting the viability of said systems.

### Online presence 
[<img align="left" alt="jrihon" width="22px" src="https://github.com/jrihon/jrihon/blob/main/README.SVG/orcid.svg"/>] 
[<img align="left" alt="jrihon" width="22px" src="https://github.com/jrihon/jrihon/blob/main/README.SVG/microsoftacademic.svg"/>] 

 - [ORCID](https://orcid.org/0000-0002-9207-1556)
 - [LinkedIn](www.linkedin.com/in/jérôme-rihon)
 - [Bibliography - Published Work](http://lirias.kuleuven.be/cv?Username=U0141262)
<br/>

## Skills
Author of `jrihon/mutineer.vim` : Commenting in Vim made easier [jrihon/mutineer.vim](https://github.com/jrihon/mutineer.vim)<br/>

`python 3`\
`(Neo)Vim`\
`LaTeX`\
`shell`\
`.dotfile configuration`\
<br/>
<br/>

## .dotfiles

The available .dotfiles are to be used in conjuction :<br/>
<br/>
### Nvim
[<img align="left" alt="jrihon" width="22px" style="#57A143" src="https://github.com/jrihon/jrihon/blob/main/README.SVG/microsoftacademic.svg"/>] 

The Vim plugin manager I use is the `vim-plug`, over at [junegunn/vim-plug](https://github.com/junegunn/vim-plug)

Do not forget to run the install.py from YouCompleteMe `cd ~/.config/nvim/plugged/YouCompleteMe && python3 install.py` with the flag (language configuration) you wish (check the README.md)
<br/>
### Starship prompt
The `Starship` prompt is available over at [Starship](https://starship.rs/)

### Nerd Fonts
For the icons, I use the `nerd-fonts/patched-fonts/Hack/` font package from [ryanoasis/nerdfonts](https://github.com/ryanoasis/nerd-fonts).
 1. Download them all manually (complete version) and open your terminal.
 2. ` $ mkdir ~/.local/share/fonts && mv ~/Downloads/Hack* ~/.local/share/fonts/`<br/>

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


## GitHub config
Make sure you have a github account and a valid `~/.gitconfig` with at least your username and email configured, in order to download automatically from the available repositories.<br/>
<br/>

## Acknowledgements
This README.md has been written with the help of [readme.so](https://readme.so/) and [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)

  

