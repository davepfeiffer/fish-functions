# fish-functions
A repository for personal fish-shell scripts and configurations. Feel free to use them (at your own risk).

# setup
- Install [fish](http://fishshell.com/).
- Place desired scripts in `~/.config/fish/functions/`
- Link the config with `ln ~/.config/fish/functions/config.fish ~/.config/fish/config.fish`
- Enjoy your improved shell experience!

# functions
## mkpdf - a latex quality of life script
[mkpdf](https://github.com/davepfeiffer/fish-functions/blob/master/mkpdf.fish) accepts a .tex file and generates a pdf from the file. If the generation succeeds, the file is opened--otherwise the log is printed.

*intended to be used with texlive/xetex*

## back - a navigation quality of life script

[back](https://github.com/davepfeiffer/fish-functions/blob/master/back.fish) accepts a non-negative integer and travels back that many parent directories.

## mkd - a mkdir alias
[mkd](https://github.com/davepfeiffer/fish-functions/blob/master/mkd.fish) makes and decends into a directory specified by the arguement.

*written by [@geowarin](https://github.com/geowarin)*

## config - a fish configuration file
Configures fish to a [monokai dark](http://www.colourlovers.com/palette/1718713/Monokai) color scheme and a cleaner prompt.

*make sure to comment out or remove setup specific commands*
