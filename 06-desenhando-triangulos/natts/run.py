"""
Solução desenvolvida por NATTS

Entrega: 2/2/19 8:38 BRT

Pontos (base): 10 (20 - 10)
Pontos adicionais: 0
Pontos (total): 10

Forma(s) de contato:
 - Discord: !Nattsッ#4023
 - GitHub: https://github.com/llSpriggan
"""

n = 0
espaço = ' '
escolha = input('Que tipo de triangulo?\n')
a = int(input('Qual a altura?\n'))

if escolha == 'solido':
    while n != a:
        n = n + 1
        print('#' * n)
else:
    if escolha == 'borda':
        while n != a:
            n = n + 1
            if n == a:
                print('#' * a)
            else:
                print('#' + espaço * (n - 1) + '#')