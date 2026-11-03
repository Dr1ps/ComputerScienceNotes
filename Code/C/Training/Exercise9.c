/*Data una matrice quadrata A di dimensione M x M, calcolare la somma degli
elementi della sottomatrica quadrata in alto a sinistra di dimensione N x N , con M >= N >= 0.

Usare una funzione con prototipo int sum_submatrix(int **matrix, int n).
Allocare A dinamicamente, per righe. Leggere da input M, N e gli elementi di A per righe;
Stampare la somma*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int sum_submatrix(int **, int);

int main() {
    int n, m;

    /*Inserimento variabile m*/
    printf("How big would you like the matrix to be (M X M)?\n");
    scanf("%d",&m);
    while (!(m > 0)) {
        printf("Invalid size, input that again.\n");
        scanf("%d",&m);
    }

    /*Dichiarazione della matrice*/
    int **matrix = (int**)malloc(m * sizeof(int *));
    if (matrix == NULL) {
        printf("Memory allocation failed.\n");
        free(matrix);
        return 1;
    }

    /*Riempimento vuoto della matrice*/
    for(int i = 0;i<m;i++) {
        matrix[i] = malloc(m * sizeof(int));
        if (matrix[i] == NULL) {
            printf("Memory allocation failed.\n");

            for (int k = 0; k < i; k++) {
                free(matrix[k]);
            }
            free(matrix);
            return 1;
        }
    }

    /*Riempimento effettivo matrice*/
    printf("Now, insert the matrix number by number:\n");
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < m; j++) {
            scanf("%d", &matrix[i][j]);
        }
    }


    /*Inserimento variabile n*/
    printf("How big would you like the submatrix to be (N X N):\n");
    scanf("%d",&n);
    while (!((n >= 0) && (n <= m))) {
        printf("Invalid size, input that again.\n");
        scanf("%d",&n);
    }

    /*Calcolo della somma della sottomatrice*/
    int somma = sum_submatrix(matrix,n);
    printf("Sum of the submatrix: %d\n",somma);

    /*Deallocazione*/
    for (int i = 0; i < m; i++) {
        free(matrix[i]);
    }
    free(matrix);
    
}

int sum_submatrix (int** matrix, int n) {
    int sum = 0;
    for(int i = 0; i<n; i++) {
        for(int j = 0; j<n; j++) {
            sum += matrix[i][j];
        }
    }
    return sum;
}