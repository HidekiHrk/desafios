"""
Solução desenvolvida por </NATHAN>

Entrega: 13/12/18 00:11 BRT

Pontos (base): 20
Pontos adicionais: 0
Pontos (total): 20

Forma(s) de contato:
 - Discord: </Nathan>#0010
 - GitHub: https://github.com/NathanXG
"""

palavra = input("O que eu devo verificar? ")
lista = []

for x in palavra:
    lista.insert(0, x)

if ''.join(lista).lower() == palavra.lower():
    valor = "é um palíndromo!"
else:
    valor = "não é um palíndromo."

print(f"{palavra}, {valor}\n\nOriginal: {palavra}\nDe trás para frente: {''.join(lista)}\n")
