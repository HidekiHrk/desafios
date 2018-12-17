# Solução #1 em C: Números felizes!

## Definições adicionais

Foi necessário definir melhor o conceito de número "infeliz". Para esta solução um número infeliz é aquele que não apenas nunca chega em 1 quando substituído pela soma do quadrado de seus dígitos, mas também gera um clico de repetições nos resultados intermediários.
Essa definição adicional é necessária pois verificar apenas se o número nunca chega em 1 gera um laço de repetição infinito (já que um número infeliz de fato nunca chega a 1).
Por exemplo, seja n = 5, temos:

- 5^2 = 25
- 25 = 2^2 + 5^2 = 4 + 25 = 29
- 29 = 2^2 + 9^2 = 4 + 81 = 85
- 85 = 8^2 + 5^2 = 64 + 25 = 89
- 89 = 8^2 + 9^2 = 64 + 81 = 145
- 145 = 1^2 + 4^2 + 5^2 = 1 + 16 + 25 = 42
- 42 = 4^2 + 2^2 = 16 + 4 = 20
- 20 = 2^2 + 0^2 = 4
- 4 = 4^2 = 16
- 16 = 1^2 + 6^2 = 1 + 36 = 37
- 37 = 3^2 + 7^2 = 9 + 49 = 58
- 58 = 5^2 + 8^2 = 25 + 64 = 89 = INFELIZ, repetição da quarta linha.

## O código

O diferencial deste problema é que ele exige o armazenamento de resultados intermediários para poder determinar o resultado final. Esse mecanismo de armazenamento dos resultados precisa ser dinâmico pois cada valor de n tem uma quantidade diferente de resultados intermediários. Por exemplo, n = 1 é um número feliz por definição (não exige cálculo adicional), mas como vimos acima n = 5 exigiu diversos cálculos para chegar a conclusão que é infeliz.
De forma resumida, o algoritmo implementado funciona da seguinte forma:

1. Determine quantos números felizes se deseja encontrar (variável *limit*);
2. Crie um vetor com esse tamanho para armazenar os resultados (variável *arrayHappyNumbers[limit]*);
3. Obtenha os números felizes (função **getHappyNumbers**);
	1. Para cada número inteiro n a partir de 1, teste se ele é feliz (função **isNumberHappy**);
	2. Inicialize uma lista vazia para guardar os resultados intermediários
		1. Se n for 1, então ele é feliz (retorna *true*);
		2. Se n já está na lista de número intermediários encontrados, então é uma repetição (retorna *false*);
		3. Se n não for 1 nem estiver na lista de já encontrados, guarde ele na lista e continue testando;
		4. Faça o novo teste com a soma dos quadrados dos dígitos de n (chamada recursiva de **isNumberHappy**);
	3. Limpe a lista utilizada no teste desse número, e teste o número seguinte;
	4. Faça isso até encontrar a quantidade desejada de números felizes.
4. Mostre os números felizes para o usuário (função **showHappyNumbers**);