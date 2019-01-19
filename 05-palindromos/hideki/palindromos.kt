/*
Solução desenvolvida por HIDEKI

Entrega: 19/1/19 19:18 BRT

Pontos (base): 10
Pontos adicionais: 0
Pontos (total): 10

Forma(s) de contato:
 - Discord: Hideki#2118
 - GitHub: https://github.com/HidekiHrk
 - Facebook: https://www.facebook.com/profile.php?id=100015139758315
*/

fun isPalindrom(word: String): Boolean{
    var finalString: String = ""
    for(x in 0 until word.length){
        var character = word[x]
        finalString = "$character$finalString"
    }
    if(finalString == word)
        return true
    return false
}

fun main(args: Array<String>){
    println("Desafio: Palíndromos!")
    print("Escreva uma palavra: ")
    val word: String = readLine()!!
    if(isPalindrom(word))
        println("A palavra $word é um palíndromo!")
    else
        println("A palavra $word não é um palíndromo!")
}
