# this is a login script for fish
# move to `~/.config/fish/config.fish` or create a symbolic link

# remove login greeting
set fish_greeting ""

# set to monokai dark color scheme
set fish_color_normal F8F8F2
set fish_color_command -o F92672
set fish_color_quote E6DB74
set fish_color_redirection F92672
set fihs_color_end F92672
set fish_color_error -o AE81FF
set fish_color_param FD971F
set fish_color_comment 75715E
set fish_color_match 66D9EF
set fish_color_search_match 66D9EF
set fish_color_operator F92672
set fish_color_escape F92672
set fish_color_cwd -o 66D9EF
set fish_color_autosuggestion 75715E
set fish_color_user -o A6E22E
set fish_color_host -o A6E22E

# set the command prompt to "$USER:$CWD$ "
function fish_prompt
	set_color $fish_color_user
	echo -n "$USER:"
	set_color $fish_color_cwd
	echo -n (prompt_pwd)
	set_color normal
	echo -n '$ '
end

# Start X at login
if status --is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end

