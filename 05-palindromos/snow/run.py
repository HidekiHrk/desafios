"""
Solução desenvolvida por SNOW

Entrega: 19/1/19 22:00 BRT

Pontos (base): 5
Pontos adicionais: 0
Pontos (total): 5

Forma(s) de contato:
 - Discord: snow#4362
"""

palavra = str(input('Escreva uma palavra (str): ')).strip().lower()
p = palavra.split()
tudojunto = ''.join(p)
r = ''
for inverso in tudojunto:
    r = inverso + r
print(f'Comparando: P: {tudojunto} I: {r}')
print(f'A palavra "{tudojunto}" É um palíndromo!' if tudojunto == r else f'A palavra "{tudojunto}" NÃO É um palíndromo')
