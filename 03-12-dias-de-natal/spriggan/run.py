"""
Solução desenvolvida por SPRIGGAN

Entrega: 25/12/18 21:43 BRT

Pontos (base): 5
Pontos adicionais: 0
Pontos (total): 5

Forma(s) de contato:
 - Discord: Spriggan#2019
 - GitHub: https://github.com/llSpriggan
"""

letra = ['1 Partridge in a Pear Tree', '2 Turtle Doves,', '3 French hens,', '4 calling birds,', '5 golden rings,', '6 geese a-laying,', '7 swans a-swimming,', '8 maids a-milking,', '9 ladies dancing,', '10 lords a-leaping,', '11 pipers piping,', '12 drummers drumming,']

for dia in range(1,13):
    if dia == 1:
        d = 'st'
    else:
        if dia == 2:
            d = 'nd'
        else:
            if dia == 3:
                d = 'rd'
            else:
                d = 'th'
    print("")
    print(f'On the {dia}{d} day of Christmas\n My true love sent to me')
    if dia == 1:
        txt = letra[0]
    else:
        txt = letra[0:dia]
        txt.reverse()
        txt = '\n'.join(txt)
    print(txt)