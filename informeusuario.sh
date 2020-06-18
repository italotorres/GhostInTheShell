#!/bin/bash

#######################################
#
# informeusuario.sh - Script de Exemplo do Curso:
#https://www.udemy.com/course/programacao-shell-script/
# Autor: Ítalo Torres (italotorres3@gmail.com)
# Data Criação: 23/12/2019
#
# Descrição: Script de exemplo que le os dados de um usuário é retorno algumas informações
#
# Exemplo de uso: ./informeusuario.sh
#
#
################################################

UserID=$(cat /etc/passwd |grep $1 | cut -d":" -f3)
Nome=$(cat /etc/passwd  |grep $1 | cut -d":" -f5 | tr -d , )
TotalHome=$(du -sh  /home/$1 | cut  -f1)
UltimoLogin=$(lastlog -u $1)

ls /home/$1 > /dev/null 2>&1 || { echo "usuario Inexistentente" ; exit 1; }
#Inicio do script
clear
echo "===================================="
echo "Relatorio do Usuário: " $1
echo
echo "UID: "$UserID
echo "Nome completo: "$Nome
echo ""
echo "Total Usado no /home/$1: $TotalHome"
echo ""
echo "Ultimo Login:"
echo $UltimoLogin
echo "==================================="
exit 0
