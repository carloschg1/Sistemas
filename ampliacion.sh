#!/bin/bash
#Crear el grupo de diseño de interfaces

groupadd diseinter

#Añadir a algún usuario a este grupo

adduser usu_diseinter
usermod -a -G diseinter usu_diseinter

#Crear las acls pertinentes
setfacl -R -m g:diseinter:r,d:g:diseinter:r /mnt/publico/proyecto/pruebas &&
setfacl -R -m g:diseinter:r,d:g:diseinter:r /mnt/publico/proyecto/src &&
setfacl -m g:diseinter:rx /mnt/publico/proyecto/ &&
setfacl -m g:diseinter:rx /mnt/publico/proyecto/src &&
setfacl -m g:diseinter:rx /mnt/publico/proyecto/pruebas





