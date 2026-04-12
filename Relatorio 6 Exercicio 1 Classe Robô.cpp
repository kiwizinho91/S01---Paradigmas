#include <iostream>
#include <string>

using namespace std;

class Robo {
public:
    string modelo;
    int versao;
    float potenciaLaser;
    int integridade;

    void disparar(Robo& alvo) {
        cout << modelo << " disparou em " << alvo.modelo << "." << endl;
        alvo.integridade -= potenciaLaser;
    }

    void exibirStatus() {
        cout << "Modelo: " << modelo << endl;
        cout << "Versao: " << versao << endl;
        cout << "Potencia do laser: " << potenciaLaser << endl;
        cout << "Integridade: " << integridade << endl;
    }
};

int main() {
    Robo robo1;
    Robo robo2;

    robo1.modelo = "RX-900";
    robo1.versao = 3;
    robo1.potenciaLaser = 25.5;
    robo1.integridade = 100;

    robo2.modelo = "ZX-110";
    robo2.versao = 5;
    robo2.potenciaLaser = 18.0;
    robo2.integridade = 120;

    robo1.disparar(robo2);

    cout << endl;
    cout << "Status do atacante:" << endl;
    robo1.exibirStatus();

    cout << endl;
    cout << "Status do alvo:" << endl;
    robo2.exibirStatus();

    return 0;
}
