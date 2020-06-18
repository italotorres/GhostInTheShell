#!/bin/bash

#######################################
#
# monitoraprocesso.sh - Script de Exemplo do Curso:
#https://www.udemy.com/course/programacao-shell-script/
# Autor: Ítalo Torres (italotorres3@gmail.com)
# Data Criação: 25/12/2019
#
# Descrição: Script de exemplo que verifica quantos usuarios humanos existem no sistema
#
# Exemplo de uso: ./monitoraprocesso.sh
#
# Alteracoes
#	Dia 16/06/20 - correção de erros na escrita
#
#
################################################

#inicio

if [ $# -eq 0 ]
then
  echo "Informe um valor para que o script funcione"
  exit 1
fi

while  true
do
  if ps axu | grep $1 | grep -v grep | grep -v $0 > /dev/null
  then
    sleep 3
    break
  else
    echo "ATENÇÃO!!!!!!! O processo $1 Não está em execução!!!"
    sleep 3
  fi

done
