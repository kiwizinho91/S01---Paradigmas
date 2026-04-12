#include <iostream>
#include <string>
#include <vector>

using namespace std;

class MembroConselho {
public:
    string nome;

    virtual void saudar() {
        cout << "Um membro do conselho faz uma reverencia silenciosa." << endl;
    }

    virtual ~MembroConselho() {}
};

class Anao : public MembroConselho {
public:
    void saudar() override {
        cout << "Pela forca da montanha, eu sou " << nome << " e honro nosso aco!" << endl;
    }
};

class Orc : public MembroConselho {
public:
    void saudar() override {
        cout << "Pelo sangue e gloria, eu sou " << nome << " e trago a forca de minha tribo!" << endl;
    }
};

class Draconato : public MembroConselho {
public:
    void saudar() override {
        cout << "Pelo sopro dos ancestrais, eu sou " << nome << " e falo em nome dos dragoes!" << endl;
    }
};

int main() {
    vector<MembroConselho*> lista;

    Anao anao;
    anao.nome = "Thorin";

    Orc orc;
    orc.nome = "Grom";

    Draconato draconato;
    draconato.nome = "Rhaziel";

    lista.push_back(&anao);
    lista.push_back(&orc);
    lista.push_back(&draconato);

    for (MembroConselho* membro : lista) {
        membro->saudar();
    }

    return 0;
}
