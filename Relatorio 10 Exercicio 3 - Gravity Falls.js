// ============================================================
//  Relatorio 10 - Exercicio 3
//  Tema: Gravity Falls — Diário 3 e Cabana do Mistério
//  Conceitos: Composição, Agregação, forEach
// ============================================================

// ── Criatura ─────────────────────────────────────────────────
class Criatura {
  constructor(nome, perigo) {
    this.nome = nome;
    this.perigo = perigo; // ex: "Alto", "Médio", "Baixo"
  }
}

// ── Composição: Diario cria e controla seu próprio array ─────
class Diario {
  constructor(numero) {
    this.numero = numero;
    this._criaturas = []; // composição: array instanciado internamente
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

// ── Personagem ───────────────────────────────────────────────
class Personagem {
  constructor(nome) {
    this.nome = nome;
  }
}

// ── Agregação: CabanaMisterio recebe personagens já criados ──
class CabanaMisterio {
  constructor(personagens) {
    this.personagens = personagens; // agregação: referência, não propriedade
  }

  listarFuncionarios() {
    console.log("\n=== Funcionários da Cabana do Mistério ===");
    this.personagens.forEach((p) => {
      console.log(`  👤 ${p.nome}`);
    });
  }
}

// ── Main ─────────────────────────────────────────────────────
console.log("======= Gravity Falls =======\n");

// Composição: Diario gerencia suas próprias criaturas
const diario = new Diario(3);

const gnomo       = new Criatura("Gnomo",             "Médio");
const bill        = new Criatura("Bill Cipher",        "Extremo");
const homemPeixe  = new Criatura("Homem-Peixe",        "Baixo");

diario.registrarCriatura(gnomo);
diario.registrarCriatura(bill);
diario.registrarCriatura(homemPeixe);

diario.listarCriaturas();

// Agregação: personagens criados fora da Cabana
const stan   = new Personagem("Grunkle Stan");
const mabel  = new Personagem("Mabel");
const soos   = new Personagem("Soos");

const cabana = new CabanaMisterio([stan, mabel, soos]);
cabana.listarFuncionarios();
