def calcOperacao():
    while True:
        print("(1: Soma) - (2: Subtração) - (3: Multiplicação) - (4: Divisão) - (0: Sair)")
        print("")
        operacao = input("Digite uma operação: ")
        
        if operacao == '0':
            print("Você saiu da calculadora")
            break
        elif operacao in ('1', '2', '3', '4'):
            numP = float(input("Primeiro número: "))
            numS = float(input("Segundo número: "))
            
            if operacao == '1':
                rCalc = numP + numS
            elif operacao == '2':
                rCalc = numP - numS
            elif operacao == '3':
                rCalc = numP * numS
            elif operacao == '4':
                if numS != 0:
                    rCalc = numP / numS
                else:
                    print("Não é possível dividir por 0(zero).")
                    continue
            resCalc = f"{rCalc:_.2f}"
            resCalc = resCalc.replace('.',',').replace('_','.')
            print(f"Resultado: {resCalc}")
            print("")
        else:
            print("Opição inexistente tente outra.")

if __name__ == "__main__":
    calcOperacao()
