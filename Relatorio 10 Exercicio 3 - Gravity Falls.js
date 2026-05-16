//classes
class Criatura {
  constructor(nome, perigo) {
    this.nome = nome;
    this.perigo = perigo; 
  }
}

class Diario {
  constructor(numero) {
    this.numero = numero;
    this._criaturas = [];
  }

  registrarCriatura(criatura) {
    this._criaturas.push(criatura);
    console.log(
      `📖 Diário ${this.numero}: "${criatura.nome}" registrada! ` +
        `(Nível de perigo: ${criatura.perigo})`
    );
  }

  listarCriaturas() {
    console.log(`\n=== Criaturas no Diário ${this.numero} ===`);
    if (this._criaturas.length === 0) {
      console.log("Nenhuma criatura registrada ainda.");
      return;
    }
    this._criaturas.forEach((c, i) => {
      console.log(`  ${i + 1}. ${c.nome} — Perigo: ${c.perigo}`);
    });
  }
}

class Personagem {
  constructor(nome) {
    this.nome = nome;
  }
}

class CabanaMisterio {
  constructor(personagens) {
    this.personagens = personagens; 
  }

  listarFuncionarios() {
    console.log("\n=== Funcionários da Cabana do Mistério ===");
    this.personagens.forEach((p) => {
      console.log(`  👤 ${p.nome}`);
    });
  }
}

// main
console.log("======= Gravity Falls =======\n");

const diario = new Diario(3);

const gnomo       = new Criatura("Gnomo",             "Médio");
const bill        = new Criatura("Bill Cipher",        "Extremo");
const homemPeixe  = new Criatura("Homem-Peixe",        "Baixo");

diario.registrarCriatura(gnomo);
diario.registrarCriatura(bill);
diario.registrarCriatura(homemPeixe);

diario.listarCriaturas();

const stan   = new Personagem("Grunkle Stan");
const mabel  = new Personagem("Mabel");
const soos   = new Personagem("Soos");

const cabana = new CabanaMisterio([stan, mabel, soos]);
cabana.listarFuncionarios();
