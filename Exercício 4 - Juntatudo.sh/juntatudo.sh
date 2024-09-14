#!/bin/bash

#Mostra na tela "grudados" todos os parametros recebidos 

#Verifica se há parametros
if [ "$#" -eq 0 ]; then
	exit 0
fi

#Usando o tr para juntar todos parametros e retirar espacos
echo "$@" | tr -d ' ' 
