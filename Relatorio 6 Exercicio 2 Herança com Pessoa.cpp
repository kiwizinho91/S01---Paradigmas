#include <iostream>
#include <string>

using namespace std;

class Pessoa {
private:
    string nome;
    int idade;

public:
    void setNome(string nome) {
        this->nome = nome;
    }

    string getNome() {
        return nome;
    }

    void setIdade(int idade) {
        this->idade = idade;
    }

    int getIdade() {
        return idade;
    }
};

class Protagonista : public Pessoa {
private:
    int nivel;

public:
    void setNivel(int nivel) {
        this->nivel = nivel;
    }

    int getNivel() {
        return nivel;
    }
};

class Personagem : public Pessoa {
private:
    int rank;

public:
    void setRank(int rank) {
        if (rank >= 0 && rank <= 10) {
            this->rank = rank;
        }
    }

    int getRank() {
        return rank;
    }
};

int main() {
    Protagonista protagonista;
    Personagem personagem;

    protagonista.setNome("Ren Amamiya");
    protagonista.setIdade(17);
    protagonista.setNivel(35);

    personagem.setNome("Makoto Niijima");
    personagem.setIdade(18);
    personagem.setRank(8);

    cout << "Protagonista:" << endl;
    cout << "Nome: " << protagonista.getNome() << endl;
    cout << "Idade: " << protagonista.getIdade() << endl;
    cout << "Nivel: " << protagonista.getNivel() << endl;

    cout << endl;
    cout << "Personagem:" << endl;
    cout << "Nome: " << personagem.getNome() << endl;
    cout << "Idade: " << personagem.getIdade() << endl;
    cout << "Rank: " << personagem.getRank() << endl;

    return 0;
}
