anoCorreto = False

print("Informe seu nome")

nome = input()

while (anoCorreto == False):

   print("Informe seu ano de nascimento entre 1922 e 2021")

   try:

       ano = int(input())

       if (ano >= 1922 and ano <=  2021):

           anoCorreto = True

           print(f"{nome}, sua idade em 2022 será {2022 - ano} após a sua dada de aniversário")

       else :

           print("Você digitou o ano inválido")

   except:

       print("Por gentileza informe o ano do seu nascimento")
