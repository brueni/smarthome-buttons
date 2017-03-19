#!/bin/bash

# Set up GPIOs

echo "198" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio198/direction

echo "199" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio199/direction

echo "200" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio200/direction

echo "201" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio201/direction

echo "203" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio203/direction

echo "6" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio6/direction

echo "1" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio1/direction

echo "64" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio64/direction

echo "65" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio65/direction

echo "67" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio67/direction

btn02="/sys/class/gpio/gpio198/value"
btn05="/sys/class/gpio/gpio199/value"
btn09="/sys/class/gpio/gpio200/value"
btn10="/sys/class/gpio/gpio201/value"
btn01="/sys/class/gpio/gpio203/value"
btn06="/sys/class/gpio/gpio6/value"
btn07="/sys/class/gpio/gpio1/value"
btn04="/sys/class/gpio/gpio64/value"
btn03="/sys/class/gpio/gpio65/value"
btn08="/sys/class/gpio/gpio67/value"

baseaction="http://homecontrol-backend.home/homecontrol-backend/"

btn01action="light-mystrom.php?switch=mystrom4.home&action=toggle" #Standlampe
btn02action="light-mystrom.php?switch=mystrom3.home&action=toggle" #Ecklampe
btn03action="light-mystrom.php?switch=mystrom2.home&action=toggle" #Kugellampe
btn04action="set_nrdylight.php?mode=toggle" #Ambilight
btn05action=""
btn06action=""
btn07action=""
btn08action=""
btn09action=""
btn10action="all_off.php" #All off


for (( ; ; ))
do
    if [ $(cat $btn01) = "0" ]; then
        echo "btn01 pressed"
	curl -s $baseaction$btn01action
	sleep 1
    fi
    if [ $(cat $btn02) = "0" ]; then
        echo "btn02 pressed"
	curl -s $baseaction$btn02action
        sleep 1
    fi
    if [ $(cat $btn03) = "0" ]; then
        echo "btn03 pressed"
	curl -s $baseaction$btn03action
        sleep 1
    fi
    if [ $(cat $btn04) = "0" ]; then
        echo "btn04 pressed"
	curl -s $baseaction$btn04action
        sleep 1
    fi
    if [ $(cat $btn05) = "0" ]; then
        echo "btn05 pressed"
	curl -s $baseaction$btn05action
        sleep 1
    fi
    if [ $(cat $btn06) = "0" ]; then
        echo "btn06 pressed"
	curl -s $baseaction$btn06action
        sleep 1
    fi
    if [ $(cat $btn07) = "0" ]; then
        echo "btn07 pressed"
	curl -s $baseaction$btn07action
        sleep 1
    fi
    if [ $(cat $btn08) = "0" ]; then
        echo "btn08 pressed"
	curl -s $baseaction$btn08action
        sleep 1
    fi
    if [ $(cat $btn09) = "0" ]; then
        echo "btn09 pressed"
	curl -s $baseaction$btn09action
        sleep 1
    fi
    if [ $(cat $btn10) = "0" ]; then
        echo "btn10 pressed"
	curl -s $baseaction$btn10action
        sleep 1
    fi
    sleep 1
done

# Clean up
#echo "" > /sys/class/gpio/unexport
