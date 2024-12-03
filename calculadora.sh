#!/bin/bash

# Crie um novo arquivo e salve-o com a extensão .sh

def calculadora():
    while True:
        # Receber entrada do usuário
        num1 = input("Digite o primeiro número: ")
        num2 = input("Digite o segundo número: ")

        # Converter os valores para float
        try:
            num1 = float(num1)
            num2 = float(num2)
        except ValueError:
            print("Por favor, insira números válidos.")
            continue

        # Escolher a operação
        print("\nEscolha a operação:")
        print("1: Adição")
        print("2: Subtração")
        print("3: Multiplicação")
        print("4: Divisão")
        print("5: Sair")

        operacao = input("Digite o número da operação desejada: ")

        if operacao == '1':
            resultado = num1 + num2
            print(f"{num1} + {num2} = {resultado}")
        elif operacao == '2':
            resultado = num1 - num2
            print(f"{num1} - {num2} = {resultado}")
        elif operacao == '3':
            resultado = num1 * num2
            print(f"{num1} * {num2} = {resultado}")
        elif operacao == '4':
            if num2 != 0:
                resultado = num1 / num2
                print(f"{num1} / {num2} = {resultado}")
            else:
                print("Erro: Divisão por zero.")
        elif operacao == '5':
            print("Saindo da calculadora.")
            break
        else:
            print("Operação inválida. Tente novamente.")

# Executar a função da calculadora
calculadora()

