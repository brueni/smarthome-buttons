#!/bin/bash

# GPIO numbers should be from this list
# 0, 1, 4, 7, 8, 9, 10, 11, 14, 15, 17, 18, 21, 22, 23, 24, 25

# Note that the GPIO numbers that you program here refer to the pins
# of the BCM2835 and *not* the numbers on the pin header.
# So, if you want to activate GPIO7 on the header you should be
# using GPIO4 in this script. Likewise if you want to activate GPIO0
# on the header you should be using GPIO17 here.

# Set up GPIO 4 and set to output
#echo "4" > /sys/class/gpio/export
#echo "out" > /sys/class/gpio/gpio4/direction

# Set up GPIO 7 and set to input
echo "198" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio198/direction

echo "6" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio6/direction

echo "66" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio66/direction


# Write output
#echo "1" > /sys/class/gpio/gpio4/value

# Read from input
cat /sys/class/gpio/gpio198/value
cat /sys/class/gpio/gpio6/value
cat /sys/class/gpio/gpio66/value

for (( ; ; ))
do
    #cat /sys/class/gpio/gpio198/value
    #cat /sys/class/gpio/gpio6/value
    #cat /sys/class/gpio/gpio66/value

    read66=$(cat /sys/class/gpio/gpio66/value)
    if [ $read66 = "0" ]; then
        echo "66 pressed"
    fi
    #read8=$(gpio read 8)
    #echo $read66
    sleep 1
done

# Clean up
echo "198" > /sys/class/gpio/unexport
echo "6" > /sys/class/gpio/unexport
echo "2" > /sys/class/gpio/unexport
