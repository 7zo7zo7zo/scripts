#!/bin/sh

$(cat ~/.bash_history | dmenu -p "History: " -l 20)
