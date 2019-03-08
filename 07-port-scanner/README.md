# Desafio #7: Port Scanner

## Contexto

Um *scanner* de portas é um *software* que procura por portas abertas em um servidor. Uma porta, basicamente, é parte de uma URL de comunicação.

## O Desafio

Escreva um *port scanner* (*scanner* de portas). Esse programa deve pedir um endereço IP ao usuário e um raio de portas. Toda vez que um porta for detectada como aberta, mostre isso ao usuário.

## Exemplos

Digamos que o usuário queira analisar o raio **0-1023** (1024 portas) no IP **216.58.202.14**. Seu programa deve retornar o seguinte conjunto de IPs e portas:

- 216.58.202.14:80
- 216.58.202.14:443

Já que **80** (HTTP) e **443** (HTTPS) são as únicas portas abertas nesse IP.

## Soluções

- Chlorine [Ruby]: Coordenador