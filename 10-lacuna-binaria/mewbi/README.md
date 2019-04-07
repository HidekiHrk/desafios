## Nome
  Lacuna Binária

## Data
  6/04/2019

## Autor
  Felipe Fernandes

## Chamada no terminal
  ./lacuna_binaria

## Como utilizar
  Primeramente forneça permissão de execução ao programa:
	chmod +x lacuna_binaria

  Para utilizar o programa é necessário chama-lo no terminal
 e inserir um argumento a ele, este tem que ser um numero
 natural maior que zero.

	./lacuna_binaria <número>

## Descrição
  Converte um número natural maior que zero para binário e
 informa a quantidade de lacunas binárias (e seus tamanhos).

## Funcionamento
  Inicialmente é realizado testes para verificar se foi 
 inserido argumentos válidos, fazendo análise se o argumento
 é um numero natural maior que zero, se não é uma string e
 se não foi inserido nenhum argumento.

  Logo após ocorre a conversão do número decimal para o 
 binário e é verificado quantas lacunas binárias o binário
 gerado possui. Caso o útlimo bit do número binário seja 0
 significa que o último conjunto de zeros não são uma lacuna,
 assim, é necessário subtrair uma lacuna do número total de
 lacunas obtido. Tais informações e o número decimal são 
 impressos na tela em seguida.

  Por fim começa o processo de análise das lacunas binárias
 (caso existam). Este separa cada lacuna existente e quantifica
 quantos zeros possue, imprimindo informações sobre a lacuna
 logo em seguida até a última lacuna detectada.
