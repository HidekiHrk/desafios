"""
Solução desenvolvida por NATTS

Entrega: 6/1/19 16:53 BRT

Pontos (base): 20
Pontos adicionais: 0
Pontos (total): 20

Forma(s) de contato:
 - Discord: !Nattsッ#2018
 - GitHub: https://github.com/llSpriggan
"""

numero = list(input("Insira seu cartão de credito: "))

numero = list(map(int, numero))[::-1]

for i in range(1, len(numero), 2):
    if numero[i] < 5:
        numero[i] = numero[i] * 2
    else:
        numero[i] = ((numero[i] * 2) // 10) + ((numero[i] * 2) % 10)

soma = sum(numero)

print(f"Soma = {soma}")

if soma % 10 != 0:
    print('Numero Invalido')
else:
    print('Numero Valido!')