// ============================================================
//  Relatorio 10 - Exercicio 4
//  Tema: Hunter x Hunter — Confronto com a Trupe Fantasma
//  Conceitos: Herança, Polimorfismo, Agregação, forEach
// ============================================================

// ── Classe base: Hunter ──────────────────────────────────────
class Hunter {
  constructor(nome) {
    this.nome = nome;
  }

  // Comportamento genérico — será sobrescrito
  lutar() {
    console.log(`${this.nome} adota uma postura de combate!`);
  }
}

// ── Subclasses com polimorfismo ──────────────────────────────
class Gon extends Hunter {
  constructor() {
    super("Gon Freecss");
  }

  lutar() {
    console.log(
      `${this.nome} ativou Jajanken! ✊ "JAN... KEN... PON!" — Pedra!`
    );
  }
}

class Killua extends Hunter {
  constructor() {
    super("Killua Zoldyck");
  }

  lutar() {
    console.log(
      `${this.nome} ativou Godspeed! ⚡ Seus movimentos ultrapassam a percepção humana.`
    );
  }
}

class Kurapika extends Hunter {
  constructor() {
    super("Kurapika");
  }

  lutar() {
    console.log(
      `${this.nome} invocou as Correntes Imperativas! ⛓️  Scarlet Eyes ativados.`
    );
  }
}

// ── Agregação: TrupeFantasma recebe membros externos ────────
class TrupeFantasma {
  constructor(nome, membros) {
    this.nome = nome;
    this.membros = membros; // agregação: membros existem independentemente
  }

  revelarMembros() {
    console.log(`\n=== Membros da ${this.nome} ===`);
    this.membros.forEach((m, i) => {
      console.log(`  ${i + 1}. ${m}`);
    });
  }
}

// ── Main ─────────────────────────────────────────────────────
console.log("======= Hunter x Hunter — Yorknew City =======\n");

const gon      = new Gon();
const killua   = new Killua();
const kurapika = new Kurapika();

console.log("--- Hunters em combate ---");
gon.lutar();
killua.lutar();
kurapika.lutar();

// Trupe Fantasma revelada
const trupeFantasma = new TrupeFantasma("Trupe Fantasma", [
  "Chrollo Lucilfer",
  "Hisoka Morow",
  "Feitan Portor",
]);

trupeFantasma.revelarMembros();
