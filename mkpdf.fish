# this function accepts a .tex file and generates a pdf from the file. 
# If the generation succeeds, the file is opened--otherwise the log is printed.
#
# *intended to be used with texlive
function mkpdf
  mkdir ./output ^ /dev/null
  begin
  	if echo $argv | grep '.*\.tex$' > /dev/null
    	set name (echo $argv | sed 's/\.[^.]*$//')
      set flags -halt-on-error -output-directory=./output
      if xelatex $flags $argv > /dev/null ^ /dev/null
        bibtex ./output/$name.aux > /dev/null ^ /dev/null
        xelatex $flags $argv > /dev/null ^ /dev/null
        evince ./output/$name.pdf > /dev/null ^ /dev/null &
      else
        cat ./output/$name.log
      end
    else
    	set_color $fish_color_error
    	echo -n "invalid parameter: "
    	set_color $fish_color_normal
    	echo "*.tex file expected"
    end
  end
end
