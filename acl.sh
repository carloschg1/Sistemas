#!/bin/bash
#Damos permisos recursivamente y de herencia para el departamento de Sistemas de Información en dos comandos agrupados en una linea
setfacl -R -m g:sinformacion:rwx,d:g:sinformacion:rwx /mnt/publico/proyecto/ &&
#Damos permisos de lectura al departamento de desarrollo para que puedan leer los pdf con información de los proyectos en una linea 
setfacl -R -m g:desarollo:r,d:g:desarollo:r /mnt/publico/proyecto/ &&
#Permitimos que el departamento de desarrollo pueda entrar en la carpeta principal
setfacl -m g:desarollo:rx /mnt/publico/proyecto/ &&
#Permisos recursivos y de herencia en la carpeta src para el departamento de desarrollo en dos comandos agrupados en una linea
setfacl -R -m g:desarollo:rwx,d:g:desarollo:rwx /mnt/publico/proyecto/src/ &&
#Permisos de lectura para los pdf con información, para el departamento de explotación en dos comandos agrupados en una linea
setfacl -R -m g:explotacion:r,d:g:explotacion:r /mnt/publico/proyecto/ &&
#Permitimos que el departamento de explotación pueda entrar en la carpeta principal.
setfacl -m g:explotacion:rx /mnt/publico/proyecto/ &&
#Permisos recursivos y herencia de lectura y ejecución de la carpeta src para el departamento de explotación en dos comandos agrupados en una linea
setfacl -R -m g:explotacion:rx,d:g:explotacion:rx /mnt/publico/proyecto/src &&
#Permisos totales recusivamente y de herencia para la carpeta pruebas para el departamento de explotación en dos comandos agrupados en una linea
setfacl -R -m g:explotacion:rwx,d:g:explotacion:rwx /mnt/publico/proyecto/pruebas &&
#No permitimos el acesso a others.
setfacl -R -m default:other:--- /mnt/publico/proyecto/
