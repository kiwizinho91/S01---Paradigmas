#include <iostream>
using namespace std;

float multiplicaArray(float arr[], int tamanho) {
    float produto = 1;

    for (int i = 0; i < tamanho; i++) {
        produto *= arr[i];
    }

    return produto;
}

int main() {
    int tamanho;

    cout << "Quantos valores deseja inserir? ";
    cin >> tamanho;

    float valores[tamanho];

    for (int i = 0; i < tamanho; i++) {
        cout << "Digite o valor " << i + 1 << ": ";
        cin >> valores[i];
    }

    cout << "Resultado da multiplicacao: " << multiplicaArray(valores, tamanho) << endl;

    return 0;
}
