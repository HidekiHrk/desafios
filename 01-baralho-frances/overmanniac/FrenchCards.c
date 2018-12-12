/*
Solução desenvolvida por OVERMANNIAC

Entrega: 12/12/18 15:38 BRT

Pontos (base): 30
Pontos adicionais: 0
Pontos (total): 30

Forma(s) de contato:
 - Discord: overmanniac#0358
*/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

typedef struct Card {
	char* value;
	char suit;
} Cards;

char* Values[13] =
{ "A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K" };
char Suits[4] =
{ 'H', 'D', 'C', 'S' };

void getNewCards(Cards* Deck) {
	int i, j;
	for (i = 0; i < 13; i++) {
		for (j = 0; j < 4; j++) {
			Deck->value = Values[i];
			Deck->suit = Suits[j];
			Deck++;
		}
	}
}

void showCards(Cards* Deck, int deckSize) {
	int i;
	for (i = 0; i < deckSize; i++) {
		printf("%s%c, ", Deck->value, Deck->suit);
		Deck++;
	}
	printf("\n");
}

//The Knuth shuffle (a.k.a. the Fisher-Yates shuffle)
//I used (but modified) the code found here:
//https://rosettacode.org/wiki/Knuth_shuffle#C
void shuffleCards(Cards* Deck, int deckSize) {
	int j;
	Cards tmp;
	srand(time(NULL));
	while (deckSize) {
		j = rand() / (RAND_MAX / 52 + 1);
		if (j != deckSize - 1) {
			tmp = Deck[j];
			Deck[j] = Deck[deckSize - 1];
			Deck[deckSize - 1] = tmp;
		}
		deckSize--;
	}
}

int main(void) {
	int deckSize = 52;
	Cards Deck[deckSize];

	//Get a new (ordered) set of cards
	getNewCards(Deck);

	//Show to everyone how cool they are!
	showCards(Deck, deckSize);

	//Now shuffle...
	shuffleCards(Deck, deckSize);

	//Ta-da! Here they are, but shuffled!
	showCards(Deck, deckSize);
}
