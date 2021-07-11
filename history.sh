#!/bin/bash
selected=$(cat ~/.bash_history | dmenu -p "History: " -l 20)
$selected
