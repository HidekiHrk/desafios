/*
Solução desenvolvida por OVERMANNIAC

Entrega: 22/12/18 21:04 BRT

Pontos (base): 5
Pontos adicionais: 5
Pontos (total): 10

Forma(s) de contato:
 - Discord: overmanniac#0358
*/

#include <stdio.h>
#include <stdlib.h>

//What presents did your true love sent you? s2
char* Presents[12] = { "Partridge in a Pear Tree﻿!", "Turtle Doves",
    "French Hens", "Calling Birds", "Golden Rings", "Geese a Laying",
    "Swans a Swimming", "Maids a Milking", "Ladies Dancing",
    "Lords a Leaping", "Pipers Piping", "Drummers Drumming" };

//Cool! By the way, how many did he sent you?
char* Amounts[12] = { "a", "Two", "Three", "Four", "Five", "Six", "Seven",
    "Eight", "Nine", "Ten", "Eleven", "Twelve" };

//Wow! And when did he do that? :-D
char* Days[12] = { "first", "second", "third", "fourth", "fifth", "sixth",
    "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth" };

//My my, that sure is worth a song isn't it? ;-)
//I will write one about your true love right away! s2
void singMeThatSong() {
  int i = 0, j;
  while (i < 12) { //This song will have twelve parts!

    //Everyday he sent you nice things...
    printf("On the %s day of christmas my true love sent to me\n", Days[i]);

    //Then you listed what and how many presents you got...
    j = i;
    while (j >= 0) {
      if (j == 0 && i > 0) {
        printf("and "); //...including the Partridge (my favorite)!
      }
      printf("%s %s\n", Amounts[j], Presents[j]);
      j--;
    }

    printf("\n");
    i++;
  }

}

int main(void) {

/*
 *            |
 *           -+-
 *            A
 *           /=\               /\  /\    ___  _ __  _ __ __    __
 *         i/ O \i            /  \/  \  / _ \| '__|| '__|\ \  / /
 *         /=====\           / /\  /\ \|  __/| |   | |    \ \/ /
 *         /  i  \           \ \ \/ / / \___/|_|   |_|     \  /
 *       i/ O * O \i                                       / /
 *       /=========\        __  __                        /_/    _
 *       /  *   *  \        \ \/ /        /\  /\    __ _  ____  | |
 *     i/ O   i   O \i       \  /   __   /  \/  \  / _` |/ ___\ |_|
 *     /=============\       /  \  |__| / /\  /\ \| (_| |\___ \  _
 *     /  O   i   O  \      /_/\_\      \ \ \/ / / \__,_|\____/ |_|
 *   i/ *   O   O   * \i
 *   /=================\
 *          |___|
 *
*/

//You know, that one about christmas presents and stuff....
  singMeThatSong();

}