#!/bin/bash

Darkmode=$(defaults read -g AppleInterfaceStyle 2>/dev/null)

if [ "$Darkmode" == 'Dark' ]
then
  printf "\e]1337;SetProfile=Dark\007"
else
  printf "\e]1337;SetProfile=Default\007"
fi