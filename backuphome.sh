#!/bin/bash

#######################################
#
# Horatual.sh - Script de Exemplo do Curso:
# https://www.udemy.com/course/programacao-shell-script/
#
# Autor: Ítalo Torres (italotorres3@gmail.com)
# Data Criação: 24/12/2019
#
# Descrição: Script de exemplo que le os dados e retorna uma mensagem de saldação baseda no horário
#
# Exemplo de uso: ./Horaatual.sh
#
#
################################################

#Inicio
clear
Caminho=$HOME/Backup
Nomebk=$(date +%Y%m%d%H%M)

if [ ! -d $Caminho ]
then
  echo "Criando o diretorio $Caminho ..."
  mkdir $Caminho
fi
D7=$(find $Caminho -ctime -7 -name backup_home\*tgz)
if [ "D7" ]

then
fi

tar cpvf $Nomebk.tar