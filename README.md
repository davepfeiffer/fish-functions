# fish-functions
A repository for personal fish-shell scripts. Feel free to use them (at your own risk).
# setup
- install [fish](http://fishshell.com/)
- place desired scripts in `~/.config/fish/functions/`
- call the functions by their names
# functions
## mkpdf - a latex quality of life script
[mkpdf](https://github.com/davepfeiffer/fish-functions/blob/master/mkpdf.fish) accepts a .tex file and generates a pdf from the file. If the generation succeeds, the file is opened--otherwise the log is printed.

*intended to be used with texlive*

## mkd - a mkdir alias
[mkd](https://github.com/davepfeiffer/fish-functions/blob/master/mkd.fish) makes and decends into a directory specified by the arguement.

*written by [@geowarin](https://github.com/geowarin)*

## config - a fish configuration file
Configures fish to a [monokai dark](http://www.colourlovers.com/palette/1718713/Monokai) color scheme and a more bash-like prompt.

*make sure to comment out or remove setup specific commands*
