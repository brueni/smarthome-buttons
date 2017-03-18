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

for (( ; ; ))
do
    if [ $(cat $btn01) = "0" ]; then
        echo "btn01 pressed"
    fi
    if [ $(cat $btn02) = "0" ]; then
        echo "btn02 pressed"
    fi
    if [ $(cat $btn03) = "0" ]; then
        echo "btn03 pressed"
    fi
    if [ $(cat $btn04) = "0" ]; then
        echo "btn04 pressed"
    fi
    if [ $(cat $btn05) = "0" ]; then
        echo "btn05 pressed"
    fi
    if [ $(cat $btn06) = "0" ]; then
        echo "btn06 pressed"
    fi
    if [ $(cat $btn07) = "0" ]; then
        echo "btn07 pressed"
    fi
    if [ $(cat $btn08) = "0" ]; then
        echo "btn08 pressed"
    fi
    if [ $(cat $btn09) = "0" ]; then
        echo "btn09 pressed"
    fi
    if [ $(cat $btn10) = "0" ]; then
        echo "btn10 pressed"
    fi
    sleep 1
done

# Clean up
#echo "" > /sys/class/gpio/unexport
