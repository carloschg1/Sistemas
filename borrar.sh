#!/bin/bash

empleados=$(cat empleados.csv | sed 1d)

while read line; do
  login=$(echo $line | cut -d ',' -f1)
  departamentos=$(echo $line | cut -d ',' -f5)
  grupoc=$(echo $line | cut -d ',' -f6)
  sudo userdel -r "$login"
  sudo groupdel "$departamentos"
  sudo groupdel "$grupoc" 

done <<< "$empleados"
