#!/bin/bash

# Script retirado do blog Viva o Linux
#link: https://www.vivaolinux.com.br/topico/Shell-Script/Exemplo-de-shell-script
#
#
#



vermelho="\033[1;31m"
verde="\033[1;32m"
rescor="\e[0m"

function Anime1(){ 
    local i=2 
    while [[ ! -z $(ps | grep "$!") ]]; do  
        printf "Processando ["$verde"          "$rescor"]" | sed "s/ /\-\>/$i" 
        printf "\r" 
        sleep 0.05 
        ((i++))
        if [ "$i" == 11 ]; then 
            for ((i;i>2;i--)); do 
                printf "Processando ["$verde"          "$rescor"]" | sed "s/ /\<\-/$i"
                printf "\r" 
                sleep 0.05
            done
        fi
    done

printf "Processando [---"$verde"feito"$rescor"---]\n\n"
}


function Ask(){
    clear

    printf "Deseja executar este script ["$verde"S"$rescor"/"$vermelho"n"$rescor"]: " && read -n1 resp

    case $resp in
        s|S) printf '\bExecutando...\n\n';;
        n|N) printf '\bSaindo...\n\n' && exit 0;;
        *) clear && ask
    esac
}

function main(){
    Ask
    [comando] &>/dev/null & Anime1
}

main 
