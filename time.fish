#
# Creates an assembly file from a specific template
#
function time
  command time -f \
"
+--------------------+
| Runtime Statistics |
+---------+----------+
| Elapsed | %E  |
| System  | %S     |
| User    | %U     |
+---------+----------+
" $argv
end
