#!/bin/bash

#######################################
#
# inspecionaHome.sh - Script de Exemplo do Curso:
#https://www.udemy.com/course/programacao-shell-script/
# Autor: Ítalo Torres (italotorres3@gmail.com)
# Data Criação: 25/12/2019
#
# Descrição: Script de exemplo que verifica quantos usuários humanos existem no sistema
#
# Exemplo de uso: ./monitoraprocesso.sh
#
#
################################################

#inicio
Diret=$()

for user in /home/*
do
  MP3c=0
  MP4c=0
  JPGc=0
  PDFc=0

  for files in $(find $user -name '*.jpg' -o -name '*.mp4' -o  -name '*.mp3' -o -name '*.pdf')
  do
    case $files in
      *.mp4)
              MP4c=$(expr $MP4c + 1)
              ;;
              *.mp3)
              MP3c=$(expr $MP3c + 1)
              ;;
              *.jpg)
                  JPGc=$(expr $JPGc + 1)
                  ;;
                  *.pdf)
                PDFc=$(expr $PDFc + 1)
                ;;
              esac
            done # fim do for no find
 echo  "Usuario: $(basename $user)"
 echo "Arquivo JPG: $JPGc"
 echo "Arquivo MP4: $MP4c"
 echo "Arquivo MP3: $MP3c"
 echo "Arquivo PDF: $PDFc"
 echo
done # fim do for no /home