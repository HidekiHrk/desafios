"""
Solução desenvolvida por CAIO

Entrega: 2/2/19 11:36 BRT

Pontos (base): 30
Pontos adicionais: 0
Pontos (total): 30

Forma(s) de contato:
 - Discord: Caio 空#8811
 - GitHub: https://github.com/AnotaOCaio
 - E-mail: abstrary@gmail.com
"""

size = input('Qual o tamanho do retângulo? ')
size = int(size) + 1

for number in range(1, size):
    print('*'*number)

string = ''
for number in range(1, size):
    string += str(number)
    print(string)

for number in range(1, size):
    if number == 1:
        print('*')
    elif number == (size - 1):
        print('*' * number)
    else:
        print('*' + ' '*(number - 2) + '*')