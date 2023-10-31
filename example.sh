#!/bin/zsh

declare -A cowboy_properties
source obj.h
source system.h


# create class object cowboy
obj cowboy

cowboy.fileName = "cowboy.data"
cowboy.posx = "10"
cowboy.posy = "0"

system.stdout.printObject cowboy

for i in {11..31}
do
   sleep 1
   
   cowboy.posx = "$i"
   system.stdout.printObject cowboy
done

