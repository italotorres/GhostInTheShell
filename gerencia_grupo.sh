#!/bin/bash

##########################################
#
# gerencia_grupo.sh - Script de exemplo do curso:
# Linux Excential da cisco
#
# Autor Ítalo Torres(italotorres3@gmail.com)
# Data de criação: 16/09/2020
# Data de atualização 19/09/2020
# Descrição: script de exemplo para facilitar
# a criação de usuarios e grupos.
#
# Exemplo de uso: ./gerencia_grupo.sh ( este scrpt deve ser executado por um
#usuario com poder de administrador)
#
##########################################

# Variáveis
clear

#Inicio
echo "Escript para Gerenciamento de contas de usuarios e grupos deste sistema"
sleep 3
echo "Por favor preencha os dados na forma da solicitação"
echo ""

read -p "Informe o nome do grupo a ser criado: " GRUPO
COMPARA_GRU=$(cat /etc/group | cut -d: -f1 | grep $GRUPO )

if [ "$GRUPO" = "$COMPARA_GRU" ];
then
	echo "Ja existe este grupo no sistema, por favor informe um nome diferente para o grupo"
	exit 3

else
	echo "Criando um grupo..."
	sleep 3
	groupadd $GRUPO > /dev/null 2>&1

fi

clear

read -p "Informe o nome do usuário a ser cirado: " USUARIO
COMPARA_USU=$(cat /etc/passwd | cut -d: -f1  | grep $USUARIO)



if [ "$USUARIO" = "$COMPARA_USU" ];
then
	echo "Usuario ja cadastrado, tente uma outra vez"
	sleep 3
	exit 1
else

	echo "Efetuando cadastro do usuário..."
	sleep 3
	 useradd -g $GRUPO -NM -s /bin/bash $USUARIO > /dev/null 2>&1
	sleep 3
	 passwd $USUARIO 
	echo "Usuário e senha criada com sucesso"
	sleep 3

fi

clear

echo "O usuário foi cadastrado nos sequintes formato [Usuário:GRUPO]: "
echo ""
echo "$(groups $USUARIO)"
 mkdir /$GRUPO
echo ""
 chmod 1770 /$GRUPO
 chown $USUARIO:$GRUPO /$GRUPO
echo "O diretorio com as devidas permissões foram criadas conforme pode ser visto abaixo:"
echo ""
ls -lda /$GRUPO
echo " "
echo "Fim da Execução!"
sleep 3
