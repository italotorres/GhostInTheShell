#!/bin/bash

#######################################
#
# likehuman.sh - Script de Exemplo do Curso:
#https://www.udemy.com/course/programacao-shell-script/
# Autor: Ítalo Torres (italotorres3@gmail.com)
# Data Criação: 25/12/2019
#
# Descrição: Script de exemplo que verifica quantos usuários humanos existem no sistema
#
# Exemplo de uso: ./likehuman.sh
#
#
################################################

#inicio
echo -e "Usuario\tUID\tDiretorio Home\tDescrição ou Nome"

for i in $(cat /etc/passwd | grep sh$ )
do
        echo
        USUARIO=$(echo $i |  cut -d":" -f1)
        UIDuser=$( echo $i |  cut -d":" -f3)
        DIRHome=$( echo $i | cut -d":" -f6 | tr -d "," )
        NOMEd=$(echo $i |  cut -d":" -f5 )
        echo   -e "$USUARIO\t $UIDuser\t$DIRHome\t$NOMEd"

done
