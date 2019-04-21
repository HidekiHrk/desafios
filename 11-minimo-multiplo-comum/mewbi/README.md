Nome
  MMC

Data
  21/04/2019

Autor
  Felipe Fernandes

Chamada no terminal
  ./mmc

Como utilizar
  Primeramente forneça permissão de execução ao programa:
	chmod +x mmc

  Para utilizar o programa é necessário executá-lo e em se-
 guida inserir números  inteiros e positivos que serão uti-
 lizados para calcular o MMC desejado.

Descrição
  Realiza o  cálculo do mmc de  números inteiros  positivos 
 inseridos. Usa-se propriedades  de MMC para poder realizar 
 o cálculo.

Funcionamento
  Após  ser  inserido  os números  para o cálculo do  mmc é
 feito  uma array para  armazenar os  valores. É trabalhado  
 de dois  em dois valores.  Primeiramente é pegado  os dois
 primeiros  números, é  calculado o MDC  com o algoritmo de 
 Euclides e com o valor  obtido é calculado  o MMC, o valor
 do MMC passa a ser  o novo termo A e o termo B passa a ser
 o próximo número da  array, o processo é  repetido até to-
 dos os números da array terem sido utilizados.
  Por fim é impresso na tela o valor do último MMC, que re-
 presenta o valor  do MMC de todos os  números inicialmente 
 inseridos.
  O cálculo do MMC é feito pela propriedade que este possui
 com MDC, sendo MMC = A*(B/MDC(A,B)) = B*(A/MDC(A,B)).
