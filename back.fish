# this function accepts a positive integer and traverses back that many
# parent directories
function back
    if echo $argv | grep '^[0-9][0-9]*$' > /dev/null
        begin
            set i $argv
            while not math $i | grep '^0$' > /dev/null
                cd ..
                if echo $PWD | grep '^/$' > /dev/null
                    set i 0
                    printf "To get past the root you'll have to go through me.\n\n(ง ͠° ͟ل͜ ͡°)ง\n\nYeah and me!\n\n(ง'̀-'́)ง\n"
                else
                    set i (math "$i - 1")
                end
            end
        end
    else
        set_color $fish_color_error
        echo -n "invalid parameter: "
        set_color $fish_color_normal
        echo "positive integer expected ಠ_ಠ"
    end
end
