//classes do melhor anime ja feito
class Hunter {
  constructor(nome) {
    this.nome = nome;
  }

  lutar() {
    console.log(`${this.nome} adota uma postura de combate!`);
  }
}

class Gon extends Hunter {
  constructor() {
    super("Gon Freecss");
  }

  lutar() {
    console.log(
      `${this.nome} ativou Jajanken!`
    );
  }
}

class Killua extends Hunter {
  constructor() {
    super("Killua Zoldyck");
  }

  lutar() {
    console.log(
      `${this.nome} ativou Godspeed!`
    );
  }
}

class Kurapika extends Hunter {
  constructor() {
    super("Kurapika");
  }

  lutar() {
    console.log(
      `${this.nome} invocou as Correntes Imperativas!`
    );
  }
}

class TrupeFantasma {
  constructor(nome, membros) {
    this.nome = nome;
    this.membros = membros;
  }

  revelarMembros() {
    console.log(`\n=== Membros da ${this.nome} ===`);
    this.membros.forEach((m, i) => {
      console.log(`  ${i + 1}. ${m}`);
    });
  }
}

// mian do melhor anime ja criado
console.log("======= Hunter x Hunter — Yorknew City =======\n");

const gon      = new Gon();
const killua   = new Killua();
const kurapika = new Kurapika();

console.log("--- Hunters em combate ---");
gon.lutar();
killua.lutar();
kurapika.lutar();

const trupeFantasma = new TrupeFantasma("Trupe Fantasma", [
  "Chrollo Lucilfer",
  "Hisoka Morow",
  "Feitan Portor",
]);

trupeFantasma.revelarMembros();
