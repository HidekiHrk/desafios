"""
Solução desenvolvida por NYO.PY

Entrega: 5/12/19 18:09 BRT

Pontos (base): 30
Pontos adicionais: 0
Pontos (total): 30

Forma(s) de contato:
 - Discord: Nyo.py#9066
"""

def luhn(n):
    n = [int(i) for i in str(n)]
    n.reverse()
    s1 = sum([n[i - 1] for i in range(1,len(n) + 1) if i % 2 == 1])
    even = [str(n[i] * 2) for i in range(0,len(n)) if i % 2 == 1]
    s2 = sum([int(i[0]) + int(i[1] if len(i) > 1 else 0) for i in even])
    return True if (s1 + s2) % 10 == 0 else False

print(f"4698635614050849 is {luhn(4698635614050849)}")
print(f"6647612517110247 is {luhn(6647612517110247)}")