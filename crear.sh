#!/bin/bash

departamentos=$(cat departamentos.csv | sed 1d)
usuarios=$(cat empleados.csv | sed 1d)

while read linea; do
        nombre=$(echo $linea | cut -d ',' -f1)
        descripcion=$(echo $linea | cut -d ',' -f2)
        sudo groupadd "$nombre"
done <<< "$departamentos"

while read linea; do
  login=$(echo $linea | cut -d ',' -f1)
  password=$(echo $linea | cut -d ',' -f2)
  nombre_apellido=$(echo $linea | cut -d ',' -f3)
  descripcion=$(echo $linea | cut -d ',' -f4)
  departamentos=$(echo $linea | cut -d ',' -f5)
  sudo useradd -m -l "$login" -p $(openssl passwd -1 "$password") -c "$nombre_apellido" -g "$departamentos"
  sudo chage -d 0 "$login"

done <<< "$usuarios"
