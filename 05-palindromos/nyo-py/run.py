"""
Solução desenvolvida por NYO.PY

Entrega: 12/12/19 23:41 BRT

Pontos (base): 30
Pontos adicionais: 0
Pontos (total): 30

Forma(s) de contato:
 - Discord: Nyo.py#9066
"""

x = input("Palavra: ")
print(True if ''.join([x[i] for i in range(-1,(len(x) + 1) * -1,-1)]) == x else False)
