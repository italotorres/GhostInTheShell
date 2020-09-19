#!/bin/bash

#######################################
#
# Criararquivo.sh - Script de Exemplo do Curso:
# https://www.udemy.com/course/programacao-shell-script/
# Autor: Ítalo Torres (italotorres3@gmail.com)
# Data Criação: 25/12/2019
#
# Descrição: Script de exemplo que cria arquivos
#Com caracteres ate completar o tamanho(bytes)
# especifico.
# Exemplo de uso: ./Criararquivo.sh
#
#
#
################################################

#inicio

read -p "Informe o nome do arquivo a ser criado:" FILE
read -p "Informe um conjunto de caracteres:" WORD
read -p "Informe o tamanho final do arquivo(em bytes)" SIZE

cat /dev/null > $FILE
PORC_EXIBIDA=0
until [  $SIZE -le $(stat --printf=%s "$FILE")  ]
do
  echo -n $WORD >> $FILE
  SIZEATUAL=$(stat --printf=%s "$FILE")
  PORC_ATUAL=$(expr $SIZEATUAL \* 100 / $SIZE)

  if [ $(expr $PORC_ATUAL % 10 ) -eq 0 -a $PORC_EXIBIDA -ne $PORC_ATUAL ]
  then
    echo "Concluido: $PORC_ATUAL% - Tamanho do Arquivo: $SIZEATUAL"
    PORC_EXIBIDA=$PORC_ATUAL
  fi
done
