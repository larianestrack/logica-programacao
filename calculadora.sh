#!/bin/bash

echo "=== CALCULADORA ==="

read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2

echo "Escolha uma operação:"
echo "1 - Soma"
echo "2 - Subtração"
echo "3 - Multiplicação"
echo "4 - Divisão"

read -p "Digite a opção: " opcao

case $opcao in
    1)
        resultado=$((num1 + num2))
        echo "Resultado: $resultado"
        ;;
    2)
        resultado=$((num1 - num2))
        echo "Resultado: $resultado"
        ;;
    3)
        resultado=$((num1 * num2))
        echo "Resultado: $resultado"
        ;;
    4)
        if [ "$num2" -eq 0 ]; then
            echo "Erro: não é possível dividir por zero."
        else
            resultado=$((num1 / num2))
            echo "Resultado: $resultado"
        fi
        ;;
    *)
        echo "Opção inválida."
        ;;
esac
