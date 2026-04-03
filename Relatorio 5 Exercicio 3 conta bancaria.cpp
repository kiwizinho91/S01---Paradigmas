#include <iostream>
using namespace std;

int main() {
    float saldo, valor;
    int opcao;
    bool executando = true;

    cout << "Informe seu saldo inicial: ";
    cin >> saldo;

    while (executando) {
        cout << "\n=== MENU ===" << endl;
        cout << "1. Ver Saldo" << endl;
        cout << "2. Depositar" << endl;
        cout << "3. Sacar" << endl;
        cout << "4. Sair" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        if (opcao == 1) {
            cout << "Saldo atual: R$ " << saldo << endl;
        }
        else if (opcao == 2) {
            cout << "Digite o valor do deposito: ";
            cin >> valor;
            saldo += valor;
            cout << "Deposito realizado com sucesso!" << endl;
        }
        else if (opcao == 3) {
            cout << "Digite o valor do saque: ";
            cin >> valor;

            if (valor > saldo) {
                cout << "Saldo Insuficiente" << endl;
            } else {
                saldo -= valor;
                cout << "Saque realizado com sucesso!" << endl;
            }
        }
        else if (opcao == 4) {
            executando = false;
            cout << "Encerrando o programa..." << endl;
        }
        else {
            cout << "Opcao invalida!" << endl;
        }
    }

    return 0;
}
