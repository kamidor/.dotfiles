#!/bin/bash
xmodmap -e "keycode 52 = y Y y Y less less"
xmodmap -e "keycode 53 = x X x X greater greater"
xmodmap -e "keycode 54 = c C c C bar bar"
setxkbmap -option caps:none
xmodmap -e "keycode 66 = Escape Escape Escape Escape Escape Escape" 
