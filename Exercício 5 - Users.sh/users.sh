#!/bin/bash

#Do arquivo /etc/passwd, mostra o usuário e o nome completo de cada usuário do sistema

#Verifica se o arquivo é legível
if [ ! -r /etc/passwd ]; then
	echo "Não foi possivel ler o arquivo"
	exit 1
fi

#Usando o comando cut para extrair o usuario e o nome
cut -d ':' -f 1,5 /etc/passwd | tr ':' '\t'
