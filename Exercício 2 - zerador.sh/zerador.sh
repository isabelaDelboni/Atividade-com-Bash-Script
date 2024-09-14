#!/bin/bash

#Recebe um paramtetro e diminui até chegar ao zero

#Verifica se recebeu parametro
if [ "$#" -ne 1 ]; then
	echo "É necessário um parametro"
	echo "Use: ./zerador.sh num"
	exit 1
fi

#Atribui parametro a variavel
num=$1

#Verifica se e numero inteiro
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
	echo "O valor deve ser um número inteiro"
	exit 1
fi

#Loop que vai diminuir até o zero
while [ "$num" -ge 0 ]; do
	echo -n "$num"
	num=$((num-1))
done

echo
