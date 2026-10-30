#!/bin/bash

# 1. Valida si es un directorio válido, si no, muestra error y sale
[ -d "$1" ] || { echo "Error: Directorio inválido o no existe"; exit 1; }

# 2. Ejecuta el tar (con la fecha integrada) y evalúa su éxito o fracaso en la misma línea
tar -czf ~/prueba/backups/backup_$(date +%Y%m%d_%H%M).tar.gz "$1" && echo "Backup creado con éxito" || { echo "Error al crear el backup"; exit 2; }
