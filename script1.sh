#!/bin/bash
mkdir primero
cd primero/
touch archivo1 archivo 2
vector1=(1 2 3 4 5)
vector2=(6 7 8 9 10)
echo ${vector1[@]} > archivo1
echo ${vector2[@]} > archivo2
