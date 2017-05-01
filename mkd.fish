# written by @geowarin
# makes and decends into a directory specified by the arguement.
function mkd
	mkdir -p $argv; and cd $argv
end
