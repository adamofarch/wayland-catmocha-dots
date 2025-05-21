#!/bin/zsh

grim -s 1.5 -l 0 $HOME/.cache/screenlock.png

magick .cache/screenlock.png -scale 20% -blur 0x3 -resize 200% .cache/screenlock.png

hyprlock

rm $HOME/.cache/screenlock.png
