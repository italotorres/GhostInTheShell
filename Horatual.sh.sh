#!/bin/bash

#######################################
#
# Horatual.sh - Script de Exemplo do Curso:
# https://www.udemy.com/course/programacao-shell-script/
# Autor: Ítalo Torres (italotorres3@gmail.com)
# Data Criação: 24/12/2019
#
# Descrição: Script de exemplo que le os dados e retorna uma mensagem de saudação baseda no horário
#
# Exemplo de uso: ./Horaatual.sh
#
#
################################################

#Saudacao=$(date +%l:%M%P)
#Hora=$(date +%H)
Hora=$1 #testando o script com esta
Minu=$(date +%M)

clear

if  [ $Hora -ge 6  -a $Hora -lt 12 ]
then
  ampm="AM"
  echo "bom dia"
  echo
  echo "A hora atual é: " $Hora $Minu $ampm
elif [ $Hora -ge 12 -a  $Hora -lt 18 ]
 then
  ampm="PM"
  echo "Boa tarde!"
  echo
  echo "A hora atual é: " $Hora $Minu $ampm
else
  ampm="PM"
  echo "Boa noite"
  echo
  echo "A hora atual é: " $Hora $Minu $ampm
fi