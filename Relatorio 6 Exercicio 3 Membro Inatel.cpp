#include <iostream>
#include <string>

using namespace std;

class MembroInatel {
public:
    string nomeCompleto;

    virtual void identificar() {
        cout << "Sou um membro da comunidade Inatel: " << nomeCompleto << "." << endl;
    }

    virtual ~MembroInatel() {}
};

class Coordenador : public MembroInatel {
public:
    string departamento;

    void identificar() override {
        cout << "Meu nome e " << nomeCompleto << ", sou o coordenador do departamento de " << departamento << " no Inatel." << endl;
    }
};

class Pesquisador : public MembroInatel {
public:
    string laboratorio;

    void identificar() override {
        cout << "Meu nome e " << nomeCompleto << ", e realizo pesquisas no laboratorio " << laboratorio << " do Inatel." << endl;
    }
};

int main() {
    MembroInatel* membro1;
    MembroInatel* membro2;

    Coordenador coordenador;
    coordenador.nomeCompleto = "Pedro Henrique Ribeiro Dias";
    coordenador.departamento = "Engenharia de Software";

    Pesquisador pesquisador;
    pesquisador.nomeCompleto = "Ana Clara Souza";
    pesquisador.laboratorio = "Lab de Inteligencia Artificial";

    membro1 = &coordenador;
    membro2 = &pesquisador;

    membro1->identificar();
    membro2->identificar();

    return 0;
}
