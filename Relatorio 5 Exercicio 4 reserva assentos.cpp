#include <iostream>
using namespace std;

int main() {
    int sala[5][5] = {0};
    int opcao;
    bool executando = true;
    int fileira, coluna;
    int ocupados = 0;
    int vazios = 0;

    while (executando) {
        cout << "\n=== MENU PRINCIPAL ===" << endl;
        cout << "1. Reservar Assento" << endl;
        cout << "2. Ver Mapa da Sala" << endl;
        cout << "3. Sair" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        if (opcao == 1) {
            cout << "Digite a fileira (0-4): ";
            cin >> fileira;
            cout << "Digite a coluna (0-4): ";
            cin >> coluna;

            if (fileira >= 0 && fileira < 5 && coluna >= 0 && coluna < 5) {
                if (sala[fileira][coluna] == 0) {
                    sala[fileira][coluna] = 1;
                    cout << "Sucesso!" << endl;
                } else {
                    cout << "Erro: Assento ocupado!" << endl;
                }
            } else {
                cout << "Posicao invalida!" << endl;
            }
        }
        else if (opcao == 2) {
            cout << "\nMapa da Sala:" << endl;

            for (int i = 0; i < 5; i++) {
                for (int j = 0; j < 5; j++) {
                    cout << "[" << sala[i][j] << "] ";
                }
                cout << endl;
            }
        }
        else if (opcao == 3) {
            executando = false;
        }
        else {
            cout << "Opcao invalida!" << endl;
        }
    }

    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            if (sala[i][j] == 1) {
                ocupados++;
            } else {
                vazios++;
            }
        }
    }

    cout << "\n=== RELATORIO FINAL ===" << endl;
    cout << "Quantidade total de assentos ocupados: " << ocupados << endl;
    cout << "Quantidade total de assentos vazios: " << vazios << endl;

    return 0;
}
