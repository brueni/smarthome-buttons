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

for (( ; ; ))
do
    read66=$(cat /sys/class/gpio/gpio66/value)
    if [ $read66 = "0" ]; then
        echo "66 pressed"
    fi

    sleep 1
done

# Clean up
#echo "" > /sys/class/gpio/unexport
