#! /bin/bash
bspc node -t floating

echo $(bspc query -D -d --names) $(bspc query -D -d .occupied --names)
echo Date/Time: $(date)
echo Battery: $(cat /sys/class/power_supply/BAT0/status) $(cat /sys/class/power_supply/BAT0/capacity)%
echo $(brightnessctl | grep %)
echo Network: $(cat /sys/class/net/wlp5s0/operstate) $(iwgetid)
echo Volume: $(pulsemixer --get-volume)%
read
