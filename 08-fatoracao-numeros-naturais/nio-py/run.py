"""
Solução desenvolvida por NIO.PY

Entrega: 8/3/19 12:45 BRT

Pontos (base): 30
Pontos adicionais: 0
Pontos (total): 30

Forma(s) de contato:
 - Discord: Nio.py#9066
"""

s = int(input("Numero: "))
nums = []
while s != 1 :
    for i in range(2,100000):
        if s % i == 0:
            nums.append(i)
            s = s / i
            break

finais = []

for num in list(nums):
    iguais = 0
    for num2 in list(nums):
        if num == num2:
            iguais += 1
            nums.remove(num2)

    if iguais == 1:
        finais.append(f"{num}")
    elif iguais != 0:
        finais.append(f"{num}^{iguais}")

print(' x '.join(finais))