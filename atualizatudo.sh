#!/bin/bash

#####################################
#atualizatudo.sh
#Autor: Ítalo Torres
#Data de Criação: 31/12/2019
#
#Descrição: Script que faz a atualiza
#ção completa do sistema e realiza a
#limpeza do mesmo.
#
#
#######################################
clear

echo " Realizando atualização de limpeza dos pacotes"
apt-get update && apt-get upgrade -y
Limpa=$(apt-get autoremove && apt-get autoclean && apt-get clean)
 
echo $?

if [ $? -eq 0 ]
then
        echo
        echo $Limpa
	sleep 3
	echo
else 
	echo
       	echo "Houve um problema na atualização"
	echo
fi
echo
echo "Fim da limpeza e atualização, efetuadas com sucesso"
echo
