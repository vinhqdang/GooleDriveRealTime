#!/bin/bash
for i in {1..100}
do
	j=$(($i%5))
	if [ $i -eq 1 ]; then
		xdotool search "Mozilla Firefox" windowactivate --sync key --clearmodifiers --delay $0  ctrl+l Tab Tab Tab Tab Tab x ctrl+Tab
		echo $(($(date +%s%N)/1000000))	
	else
		xdotool search "Mozilla Firefox" windowactivate --sync key --clearmodifiers --delay $0 ctrl+l Tab Tab Tab Tab Tab $j ctrl+Tab
	fi
done
