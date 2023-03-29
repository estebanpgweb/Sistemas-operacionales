#!/bin/bash
var1=($(cat primero/archivo1))
va2=($(cat primero/archivo2))

for((i=0;<5;i++))
do 
	suma[i]= $((${var1[i]}+$var2[i]}))
done
echo ${suma[@]}>primero/archivo3
