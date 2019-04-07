"""
Solução desenvolvida por NIO.PYX

Entrega: 7/12/19 14:27 BRT

Pontos (base): 20
Pontos adicionais: 5 (comentários)
Pontos (total): 25

Forma(s) de contato:
 - Discord: Nyo.py#9066
"""

Input = bin(int(input("Número: "))).replace("0b","") #Pede um input que é convertido para inteiro, convertendo-o para bínario e
if int(Input) > 0:
    #substituindo "0b" por "" para ter garantia de não acontecer erros
    Lacunas = []

    NowSearch = []
    for num in Input: #Para cada número em input
        if num == "1": #Se for "1"
            if NowSearch != []: #E NowSearch não estiver vazia
                Lacunas.append(NowSearch) # Adiciona NowSearch para Lacunas
                NowSearch = []  #Reseta NowSearch
            else: #Senão
                NowSearch = [] #Reseta NowSearch
        else: #Senão 
            NowSearch.append(num) #Adiciona num para NowSearch 
    LaQuant = len(Lacunas) #Conta quantas lacunas existe
    LaQuant = f"{LaQuant} lacunas" if LaQuant > 1 else f"{LaQuant} lacuna" 
    Tamanhos = "\n".join([f"{index + 1}° de tamanho {len(i)}" for index,i in enumerate(Lacunas)])

    print(f"O número {int(Input)} ({Input}) possui {LaQuant}\n{Tamanhos}")
else:
    print("O número tem que ser maior que 0!")
