#!/bin/bash

#O Script recebe dois numeros como parametros e mostra a relacao entre eles.

#Verifica se foram passados dois parametros
if [ "$#" -ne 2 ]; then
	echo "É necessário dois números"
	echo "Use: ./relacao.sh num1 num1"
	exit 1
fi

#Atribui os parametros a variaveis
num1=$1
num2=$2

#Compara os números e mostra a relacao entre eles
if [ "$num1" -lt "$num2" ]; then
	echo "$num1 é menor que $num2"
elif [ "$num1" -gt "$num2" ]; then
	echo "$num1 é maior que $num2"
else
	echo "$num1 é igual a $num2"
fi
