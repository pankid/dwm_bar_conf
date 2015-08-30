#!/bin/sh

##colors 
while true; do 	
	##bar variables
	time="`date "+%a %b %d %T"`"
	bright="`echo "|B|"` `xbacklight | sed s/.[^.]*$//`"
	power="`echo "|P|"` `upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -o '[0-9].[0-9] hours\|[0-9]\?[0-9]\?.[0-9] minutes'`"
	vol="`echo "|V|"` `amixer sget Master | grep -o '[0-9]\?[0-9]\?[0-9]%' | head -n 1`"
	
	xsetroot -name "$time $bright $power $vol" 
	sleep .25
done &
