#!/bin/bash

# Definir el nombre y el comando del alias
alias_name="lsl"
alias_command="ls -l"

# Agregar el alias al archivo de configuración de Bash
echo "alias $alias_name='$alias_command'" >> ~/.bashrc

# Cargar el archivo de configuración de Bash
source ~/.bashrc

# Imprimir un mensaje de confirmación
echo "Alias '$alias_name' creado correctamente"
