#!/bin/bash

#####################################
#Atividade 2 do curso de shellscript:
# https://www.udemy.com/course/programacao-shell-script/
# criando um relatorio simples
#
#dia 22/12/2019
#
#
####################################

Maquina=$(hostname)
Vkernel=$(uname -r)
Memtotal=$(free -h | tr -s '  ' | sed '/^Mem/!d' | cut -d" " -f2)
Qtcpu=$(lscpu | tr -s ' ' | sed '/CPU(s):/!d' |  cut -d":" -f2)
CPUmodelo=$(lscpu | tr -s ' ' | sed '/Nome/!d' | cut -d":" -f 1,2)
PARticao=$( df -h  )

echo "==================================="
echo " Relatório da máquina: $Maquina"
echo "Data/Hora $(date)"
echo "==================================="
echo ""
echo  "Maquina Ativa deste $(uptime -s )"
echo ""
echo "Versão do Kernel: $Vkernel"
echo""
echo "Memória Total: $Memtotal"
echo ""
echo "CPUs:"
echo "Quantidade de CPUs/Cores $Qtcpu"
echo ""
echo  $CPUmodelo
echo ""
echo "partiçoes: "
echo $PARticao