#!/bin/bash

#######################################
#
# monitoraprocesso_Email.sh - Script de Exemplo do Curso
#
# Autor: Ítalo Torres (italotorres3@gmail.com)
# Data Criação: 28/12/2019
#
# Descrição: Script de exemplo que verifica se um processo esta rodando é encaminha uma
# email caso o mesmo não esteja.
#
# Exemplo de uso: ./monitoraprocesso_Email.sh .sh (Parametro)
#
#
################################################


if [ $# -eq 0 ]
then
  echo "Para que o sistema funcione informe um parametro"
  exit 1
fi

while true
do
  if ps axu | grep $1 | grep -v grep |  grep -v $0 > /dev/null
  then
    sleep 3
    else
      echo "testando a funcoinalidade" | mail -s  "Por favor reativar o mesmo" tux
      sleep 3
  fi
done
