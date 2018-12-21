"""
Solução desenvolvida por NYP.PY

Entrega: 21/12/18 16:39 BRT

Pontos (base): 10
Pontos adicionais: 0
Pontos (total): 10

Forma(s) de contato:
 - Discord: Nyo.py#9066
"""

def main(n):
    nlista = []
    for numero in str(n):
        nlista.append(int(numero)**2)
    return sum(nlista),nlista

numeros_felizes = []
n = 0
while True: #Numero para descobrir
    old = n
    vezes = 100
    while n != 1:
        n = main(n)
        conta = n[1]
        contastr = []
        for item in conta:
            contastr.append(str(item))
        n = n[0]
        print("n = " + ' + '.join(contastr) + f" = {n}")
        vezes -= 1
        print(vezes)
        if vezes == 0:
            break
    if n != 1:
        print(f"{old} não é um numero feliz ;-;")
    else:
        print(f"{old} é um numero feliz =)")
        numeros_felizes.append(old)
    n = old + 1
    if len(numeros_felizes) == 20:
        print(f"{numeros_felizes}\n Numeros felizes =)")
        break