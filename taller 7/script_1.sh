#!/bin/bash

comandos="$HOME/.bash_history"
sorted_comandos = $(cat "comandos" | sort | uniq -c)
echo "$sorted_comandos"
