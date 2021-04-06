#!/bin/bash
## Common code

## Formatting output
bold=$(tput bold)
normal=$(tput sgr0)

green="\033[32m"
greenbold="\033[1;32m"
blue="\033[36m"
bluebold="\033[1;36m"
purple="\033[34m"
purplebold="\033[1;34m"
pink="\033[35m"
pinkbold="\033[1;35m"
white="\033[37m"
whitebold="\033[1;37m"
reset="\033[0m"

## Include aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi