#!/bin/bash

# Definir el nombre y el comando del alias
alias_name="lsl"
alias_command="ls -l"

# Agregar el alias al archivo de configuraci�n de Bash
echo "alias $alias_name='$alias_command'" >> ~/.bashrc

# Cargar el archivo de configuraci�n de Bash
source ~/.bashrc

# Imprimir un mensaje de confirmaci�n
echo "Alias '$alias_name' creado correctamente"
