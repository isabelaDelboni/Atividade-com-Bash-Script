#!/bin/bash

#Mostra na tela todos os parâmetros recebido

#Verifica se existe parametro
if [ "$#" -eq 0 ]; then
	echo "Sem parâmetro"
	exit 0
fi

#Inicializando o contador
contador=1

#Precessando cadas paramtero com shift
while [ "$#" -gt 0 ]; do
	echo "Parâmetro: $contador: $1"

	shift

	contador=$((contador + 1))
done


