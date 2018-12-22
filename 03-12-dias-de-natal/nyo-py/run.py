"""
Solução desenvolvida por NYO.PY

Entrega: 21/12/18 22:23 BRT

Pontos (base): 30
Pontos adicionais: 0
Pontos (total): 30

Forma(s) de contato:
 - Discord: Nyo.py#9066
"""

Continuação = ["2 Turtle Doves,","3 French hens,","4 calling birds,","5 golden rings,","6 geese a-laying,","7 swans a-swimming,","8 maids a-milking,","9 ladies dancing,",
               "10 lords a-leaping,","11 pipers piping,","12 drummers drumming,",None]

def main(num):
    v = num
    select = []
    for item in Continuação:
        if v < 1:
            select.reverse()
            return "\n".join(select)
        else:
            select.append(item)
        v -= 1

days = ["1st","2nd","3rd","4th","5th","6th","7th","8th","9th","10th","11th","12th"]

vezes = 12
day = 1
end = "a"
while vezes != 0:
    if day > 2:
        end = "and a"
    middle = main(day - 1)
    if middle != "":
        middle = f"\n{middle}"
    print(f"""
On the {days[day - 1]} day of Christmas
My true love sent to me{middle}
{end} Partidge in a Pear Tree.""")
    vezes -= 1
    day += 1