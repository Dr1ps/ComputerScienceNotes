/*Leggere da input la dimensione M di una matrice quadrata A e i suoi elementi, inseriti per righe.
Allocare la matrice dinamicamente per righe.

Usando una funzione, cambiare il segno degli elementi sulla diagonale principale. Stampare
il risultato.*/

#include <stdio.h>
#include <stdlib.h>

int** invertDiag (int**, int);

int main() {

    int m;

    /*Size input*/
    printf("Input the matrix size: ");
    scanf("%d",&m);
    while(m <= 0) {
        printf("Invalid size, try again\n");
        scanf("%d",&m);
    }

    /*Allocation*/

    int **A = (int*)malloc(m * sizeof(int*));
    if(A == NULL) {
        free(A);
        return 1;
    }
    for(int i = 0; i<m;i++) {
        A[i] = malloc(m * sizeof(int));
        if(A[i] == NULL) {
            for(int k = 0; k < i; k++) {
                free(A[k]);
            }
            free(A);
            return 1;
        }
    }

    /*Input*/

    for(int i = 0;i<m;i++) {
        for(int j = 0; j<m; j++) {
            scanf("%d",&A[i][j]);
        }
    }

    /*Calcolo*/
    int **B = invertDiag(A,m);

    /*stampa*/
    for(int i = 0;i<m;i++) {
        for(int j = 0; j<m; j++) {
            printf("%d",B[i][j]);
            printf(",");
        }
        printf("\n");
    }
}

int** invertDiag (int **A, int m) {
    for(int i = 0;i<m;i++) {
        for(int j = 0; j<m; j++) {
            if(i == j) {
                A[i][j] *= -1;
            }
        }
    }
} 