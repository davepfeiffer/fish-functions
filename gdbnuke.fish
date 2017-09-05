#
# Launches Open On-Chip Debugger and connects a GDB server
# Currently hard-coded for STM32F7x arm chips.
#
# Takes a `.elf` file argument
#
function gdbnuke
  command sudo openocd \
    -f /usr/share/openocd/scripts/board/stm32f7discovery.cfg &
  command \
    arm-none-eabi-gdb $argv -ex "target remote localhost:3333; load"; \
    sudo killall openocd
end
