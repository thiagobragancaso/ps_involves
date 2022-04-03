
def main():
    print("\nBem vindo a calculadora Python! \nAproveite para realizar todos os seus cálculos.")

    opcao = int(input("Seleciona abaixo qual operação você deseja fazer: \
                        \n- Digite 1 se deseja realizar a operação de soma (+);\
                        \n- Digite 2 se deseja realizar a operação de subtração (-);\
                        \n- Digite 3 se deseja realizar a operação de multiplicação (*);\
                        \n- Digite 4 se deseja realizar a operação de divisão (/);\
                        \n- Digite 5 dr desejar sair do programa.\n\nOpção: "))

    match opcao:
        case 1:
            print("Você escolheu realizar uma soma entre dois números.")
            num1 = float(input("Insira o primeiro número: "))
            num2 = float(input("Insira o segunda número: "))

            print(f"\nOs números escolhidos foram {num1} e {num2}")
            print(f"A soma entre os dois números é tal que: {num1} + {num2} = {num1 + num2}", end="\n\n")

            reiniciar = input("Deseja realizar mais alguma operação?\nSe sim, digite (s), caso contrário digite (n).\n")

            if reiniciar == 's':
                main()
        case 2:
            print("Você escolheu realizar uma subtração entre dois números.")
            num1 = float(input("Insira o primeiro número: "))
            num2 = float(input("Insira o segunda número: "))

            print(f"\nOs números escolhidos foram {num1} e {num2}")
            print(f"A subtração entre os dois números é tal que: {num1} - {num2} = {num1 - num2}", end="\n\n")

            reiniciar = input("Deseja realizar mais alguma operação?\nSe sim, digite (s), caso contrário digite (n).\n")

            if reiniciar == 's':
                main()
        case 3:
            print("Você escolheu realizar uma multiplicação entre dois números.")
            num1 = float(input("Insira o primeiro número: "))
            num2 = float(input("Insira o segunda número: "))

            print(f"\nOs números escolhidos foram {num1} e {num2}")
            print(f"A multiplicação entre os dois números é tal que: {num1} * {num2} = {num1 * num2}", end="\n\n")

            reiniciar = input("Deseja realizar mais alguma operação?\nSe sim, digite (s), caso contrário digite (n).\n")

            if reiniciar == 's':
                main()
        case 4:
            print("Você escolheu realizar uma divisão entre dois números.")
            num1 = float(input("Insira o primeiro número: "))
            num2 = float(input("Insira o segunda número: "))

            print(f"\nOs números escolhidos foram {num1} e {num2}")
            print(f"A divisão entre os dois números é tal que: {num1} / {num2} = {num1 / num2}", end="\n\n")

            reiniciar = input("Deseja realizar mais alguma operação?\nSe sim, digite (s), caso contrário digite (n).\n")

            if reiniciar == 's':
                main()
        case 5:
            exit()


if __name__ == "__main__":
    main()