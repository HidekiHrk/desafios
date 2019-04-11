"""
Solução desenvolvida por NIO.PY

Entrega: 10/4/19 21:30 BRT

Pontos (base): 30
Pontos adicionais: 5 (comentários)
Pontos (total): 35

Forma(s) de contato:
  - Discord: Nio.py#9066
"""

words = str(input("Word: ")).replace("-"," ").split() # Separa uma frase por espaços e hífens
#Exemplo: cross road = ["cross","road"]
#Exemplo2: = he is friendly-looking = ["he","is","friendly","looking"]

for i, word in enumerate(words):#Para cada palavra em "words"
    
    if word[0].lower() in ["a","e","i","o","u"]:#Se ela começa com uma vogal
        pont = False
        for pont in [".",":",";",",",""]: # Para cada "pontuação"
            if pont in word: # Se a pontuação estiver na palavra
                word = word.replace(pont,"") #Substitui "{pont}" por ""
                break # Quebra o loop
        if pont == False: #Se pont não for falso
            pont = ""
        words[i] = word + "way" + pont #Adicionamos "way" no final da palavra mais a pontuação
    if word[0].lower() not in ["a","e","i","o","u","1","2","3","4","5","6","7","8","9"]:#Se ela nao começa com uma vogal ou numero   
        firstvogal = 0
        for ind,item in enumerate(word):#Encontramos o index da primeira vogal
            if item in ["a","e","i","o","u"]: #Se a letra é uma vogal
                firstvogal = ind # firstvogal conterá o index da primeira vogal da palavra
                break # Quebra o loop
        consoants = ''.join([ite for ite in word[0:firstvogal] if ite not in ["a","e","i","o","u"]])#Encontramos todas as consoantes na palavra antes da vogal

        pont = False
        for pont in [".",":",";",",",""]: # Para cada "pontuação"
            if pont in word: # Se a pontuação estiver na palavra
                word = word.replace(pont,"") #Substitui "{pont}" por ""
                break # Quebra o loop
        if pont == False: #Se pont não for falso
            pont = ""
        words[i] = word[firstvogal:len(word)] + consoants + "ay" + pont #tiramos as consoantes antes da vogal, adicionamos atrás e adicionamos o "ay"
            
print(" ".join(words))#Junta as palavras da lista e coloca as palavras na tela
