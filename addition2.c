#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    if (argc == 3) {
        int num1 = atoi(argv[1]);
        int num2 = atoi(argv[2]);
        int sum = num1 + num2;
        printf("Le résultat de %d + %d = %d\n", num1, num2, sum);
    } else {
        printf("Le script doit s'écrire : %s chiffre1 chiffre2\n", argv[0]);
        exit(2);
    }
    return 0;
}

