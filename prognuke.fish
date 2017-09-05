#
# Uses Open On-Chip Debugger to program an intel hex file onto a STM32F7x chip
#
# Takes the `.hex` file to be programmed as an argument
#
function prognuke
  command sudo openocd \
    -f /usr/share/openocd/scripts/board/stm32f7discovery.cfg \
    -c "program $argv verify reset exit"
end
