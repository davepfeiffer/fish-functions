# this function accepts the name of a .tex file (without the extension)
# and generates a pdf from the file. If the generation succeeds, the file is 
# opened--otherwise the log is printed.
#
# *intended to be used with texlive
function mkpdf
    mkdir ./output ^ /dev/null
    begin
        set flags -halt-on-error -output-directory=./output -output-format=pdf
        if pdflatex $flags $argv.tex > /dev/null ^ /dev/null
            evince ./output/$argv.pdf &
        else
            cat ./output/$argv.log
        end
    end
end
