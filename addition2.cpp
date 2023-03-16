#include <iostream>
#include <cstdlib>

using namespace std;

int main(int argc, char *argv[]) {
    if (argc == 3) {
        int num1 = atoi(argv[1]);
        int num2 = atoi(argv[2]);
        int sum = num1 + num2;
        cout << "Le résultat de " << num1 << " + " << num2 << " = " << sum << endl;
    } else {
        cout << "Le script doit s'écrire : " << argv[0] << " chiffre1 chiffre2" << endl;
        exit(2);
    }
    return 0;
}
