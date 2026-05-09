// ============================================================
//  Relatorio 10 - Exercicio 1
//  Tema: Batalha Pokémon
//  Conceitos: Herança, Encapsulamento, Polimorfismo, Getter
// ============================================================

class Pokemon {
  constructor(nome, tipo) {
    this.nome = nome;
    this.tipo = tipo;
    this._vida = 100; // atributo privado por convenção
  }

  // Getter — única forma de ler a vida de fora
  get vida() {
    return this._vida;
  }

  // Método genérico (será sobrescrito pelas subclasses)
  atacar() {
    console.log(`${this.nome} usou um ataque genérico!`);
  }

  // Encapsulamento: vida só é alterada por este método
  receber_dano(dano) {
    this._vida = Math.max(0, this._vida - dano);
    console.log(
      `${this.nome} recebeu ${dano} de dano! Vida restante: ${this._vida}`
    );
  }
}

// ── Subclasse Pikachu ────────────────────────────────────────
class Pikachu extends Pokemon {
  constructor() {
    super("Pikachu", "Elétrico");
  }

  // Polimorfismo: sobrescreve o método da classe base
  atacar() {
    console.log(`${this.nome} usou Thunderbolt! ⚡ É super eficaz!`);
  }
}

// ── Subclasse Charizard ──────────────────────────────────────
class Charizard extends Pokemon {
  constructor() {
    super("Charizard", "Fogo/Voador");
  }

  // Polimorfismo: sobrescreve o método da classe base
  atacar() {
    console.log(`${this.nome} usou Lança-Chamas! 🔥 Um ataque devastador!`);
  }
}

// ── Main ─────────────────────────────────────────────────────
console.log("========== Batalha Pokémon ==========\n");

const pikachu = new Pikachu();
const charizard = new Charizard();

// Cada Pokémon ataca com seu próprio estilo
pikachu.atacar();
charizard.atacar();

console.log("\n--- Aplicando dano ao Pikachu ---");
pikachu.receber_dano(35);
pikachu.receber_dano(80); // testa o limite: vida não pode ficar negativa

// Exibe vida via getter (acesso controlado)
console.log(`\nVida final de ${pikachu.nome}: ${pikachu.vida}`);
console.log(`Vida final de ${charizard.nome}: ${charizard.vida}`);
