/*
Solução desenvolvida por OVERMANNIAC

Entrega: 17/12/18 10:45 BRT

Pontos (base): 30
Pontos adicionais: 10
Pontos (total): 40

Forma(s) de contato:
 - Discord: overmanniac#0358
*/

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

//Cell to hold intermediate results in number checking
typedef struct cell {
	int data;
	struct cell* next;
} Buffer;

//A global list of cells that will be reused during number checking
Buffer* cycle;

//Standard linked list initialization
Buffer* init(void) {
	return NULL;
}

//Standard linked list insertion (at the beginning of the list)
Buffer* insert(Buffer* b, int i) {
	Buffer* new = (Buffer*) malloc(sizeof(Buffer));
	new->data = i;
	new->next = b;
	return new;
}

//Standard linked list sequential search
Buffer* search(Buffer* b, int v) {
	Buffer* p;
	for (p = b; p != NULL; p = p->next)
		if (p->data == v)
			return p; /* found */
	return NULL; /* not found */
}

//Standard linked list clear (we used malloc, now we need to free the cells!)
void clear(Buffer* b) {
	Buffer* p = b;
	while (p != NULL) {
		Buffer* t = p->next; /* get pointer to next element */
		free(p); /* frees the memory of current element */
		p = t; /* points to the next element */
	}
}

//For a given n, returns the sum of i^2, for every digit i of n.]
//Example: for 120, returns 1^2 + 2^2 + 0^2 = 5
int splitPowSum(int n) {
	int sum = 0;
	while (n) {
		sum += (n % 10) * (n % 10); //There are better ways of doing this, but I like it!
		n /= 10;
	}
	return sum;
}

//Beware! Down here is recursive code!
bool isNumberHappy(int n) {
	if (n == 1) { //Reached happy number case
		return true;
	}
	if (search(cycle, n) != NULL) { //Reached unhappy number case
		return false;
	}
	cycle = insert(cycle, n); //Don't know yet, just store the result and keep testing.
	return isNumberHappy(splitPowSum(n)); //Tail recursion!
}

//Get integers, check if they are happy and store the happy ones!
void getHappyNumbers(int array[], int size) {
	int found = 0;
	int n = 1;
	while (found < size) {
		cycle = init(); //Start a new buffer for current number check
		if (isNumberHappy(n)) {
			array[found] = n;
			found++;
		}
		clear(cycle); //Now free the memory (this is not Java, no GC here)
		n++;
	}
}

//Pretty self-explanatory...
void showHappyNumbers(int array[], int size) {
	for (int i = 0; i < size; i++) {
		printf("%d ", array[i]);
	}
	printf("\n"); //Newline for cosmetic purposes only.
}

int main(void) {
	int limit = 20;
	int arrayHappyNumbers[limit];

	//Get me some happy numbers :-)
	getHappyNumbers(arrayHappyNumbers, limit);

	//Now show me what you've got!
	showHappyNumbers(arrayHappyNumbers, limit);
}
