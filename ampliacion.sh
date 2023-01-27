#!/bin/bash
#Crear el grupo de diseño de interfaces

groupadd diseinterf

#Añadir a algún usuario a este grupo

adduser usu_diseinterf
usermod -a -G diseinterf usu_diseinterf

#Crear las acls pertinentes
setfacl -R -m g:diseinterf:r,d:g:diseinterf:r /mnt/publico/proyecto/pruebas &&
setfacl -R -m g:diseinterf:r,d:g:diseinterf:r /mnt/publico/proyecto/src &&
setfacl -m g:diseinterf:rx /mnt/publico/proyecto/ &&
setfacl -m g:diseinterf:rx /mnt/publico/proyecto/src &&
setfacl -m g:diseinterf:rx /mnt/publico/proyecto/pruebas





