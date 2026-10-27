/*Leggere due stringhe di non più di 1000 caratteri e definire 
char* my_strcat(char *s1, char *s2).
La funzione deve allocare una nuova stringa concatenando le due ricevute, senza usare strcat o strncat.
Leggere, nell'ordine , lunghezza e contenuto della prima stringa, poi lunghezza e contenuto della seconda.
Allocare per ciascuna esattamente lo spazio indicato più il terminatore nullo.
Stampare la concatenazione. */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char* my_strcat(char*,char*);

void main () {

    char s1t[1001];
    char s2t[1001];

    /*Input stringhe*/
    printf("Input the first string:\n");
    scanf("[\n]",s1t);
    printf("Input the second string:\n");
    scanf("[\n]",s2t);

     /*Dichiarazione stringhe con vincoli*/
    char* s1 = malloc(strlen(s1t) * sizeof(char));
    char* s2 = malloc(strlen(s2t) * sizeof(char));

    while (s1 == NULL || s2 == NULL) {
        printf("Error: memory allocation failed.\n");
        free(s1);
        free(s2);
        return 1;
    }

    /*Stampa lunghezze e contenuti*/
    printf("Length of the first string: %d\n", strlen(*s1));
    printf("Content of the first string: %d\n", *s1);
    printf("Length of the second string: %d\n", strlen(*s2));
    printf("Content of the second string: %d\n", *s2);

    /*Concatenamento*/

    free(s1);
    free(s2);
}

char* my_strcat(char* s1, char* s2) {
    return *s1 + *s2;
}
