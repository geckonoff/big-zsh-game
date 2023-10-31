#!/bin/zsh

OBJFILE="./obj.data"
POSX=20
POSY=10

clear
printf "\033[1;37;41m"

local y=$POSY
for line in $(cat $OBJFILE)
do
  ((y++))
  x=0
  for xy in "${(@s/;/)line}"
  do
    if [[ $xy -ne " " ]]
    then
      printf "\033["$y";"$(( ${${(s/,/)xy}[1]} + $POSX ))"H"
      printf '%0.1s' " "{1.."${${(s/,/)xy}[2]}"}
    fi
  done
done

# printf '\033[1;37;46m\033[5;24H]'
# 
# while true
# do
# printf '\033[1C'
#    printf '-'
#    printf '\033[1D'
#    sleep 0.1
#    printf '\\'
#    printf '\033[1D'
#    sleep 0.1
#    printf '|'
#    printf '\033[1D'
#    sleep 0.1
#    printf '/'
#    printf '\033[1D'
#    sleep 0.1
# done