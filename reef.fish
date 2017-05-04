# this function displays various statics about your commandline usage
# * work in progress
function reef
	begin
		set cmd_cnt (cat ~/.config/fish/fish_history | grep 'cmd:' | wc -l)
		printf "commands executed:\\t$cmd_cnt\\n"
	end
end
