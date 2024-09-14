#!/bin/bash

#Do arquivo /etc/passwd, mostra todos os shells (último campo) que os usuários usam

#Verifica se o arquivo e legivel

if [ ! -r /etc/passwd ]; then
	echo "Não foi possivel ler o arquivo"
	exit 1
fi

#Usando cut para extrair o ultimo campo, o sort para ordenar e o uniq para remover a linhas repetidas
cut -d':' -f7 /etc/passwd | sort | uniq
