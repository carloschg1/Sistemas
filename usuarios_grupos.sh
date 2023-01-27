#!/bin/bash

#Creamos los usuarios

adduser usu_sinformacion
adduser usu_desarollo
adduser usu_explotacion

#Creamos los grupos 

groupadd sinformacion
groupadd desarollo
groupadd explotacion

#Añadimos los usuarios a los grupos

usermod -a -G sinformacion usu_sinformacion
usermod -a -G desarollo usu_desarollo
usermod -a -G explotacion usu_explotacion
