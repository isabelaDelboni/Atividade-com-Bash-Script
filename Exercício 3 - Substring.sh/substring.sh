#!/bin/bash

#Recebe duas palavras como parametro e se a primeira esta dentro da segunda.

#Verifica se possui dois parametros
if [ "$#" -ne 2 ]; then
	exit 0;
fi

#Atribui os parametros a variavel
string1=$1
string2=$2

#Uso da grep para a verificação da palavra
if echo "$string2" | grep -q "$string1"; then
	echo "$string1 está contida em $string2"
fi


