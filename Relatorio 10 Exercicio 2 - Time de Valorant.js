// ============================================================
//  Relatorio 10 - Exercicio 2
//  Tema: Time de Valorant
//  Conceitos: Interface Simulada, Composição, Agregação, filter/forEach
// ============================================================

// ── Interface simulada: Habilidade ──────────────────────────
class Habilidade {
  usar() {
    throw new Error(
      `${this.constructor.name} deve sobrescrever o método usar()`
    );
  }
}

// ── Habilidades concretas ────────────────────────────────────
class Smoke extends Habilidade {
  usar() {
    console.log("💨 Smoke ativado! Área bloqueada com fumaça densa.");
  }
}

class Flash extends Habilidade {
  usar() {
    console.log("💥 Flash lançado! Inimigos cegados por 2 segundos.");
  }
}

class Dash extends Habilidade {
  usar() {
    console.log("💨 Dash executado! Agente reposicionado em alta velocidade.");
  }
}

class Armadilha extends Habilidade {
  usar() {
    console.log("🕸️  Armadilha posicionada! Inimigo será detectado e lentificado.");
  }
}

// ── Composição: Agente possui uma Habilidade ────────────────
class Agente {
  constructor(nome, funcao, habilidade) {
    this.nome = nome;
    this.funcao = funcao;
    this._habilidade = habilidade; // composição: objeto Habilidade armazenado internamente
  }

  get habilidade() {
    return this._habilidade;
  }

  entrarEmCombate() {
    console.log(`\n[${this.funcao}] ${this.nome} entrou em combate!`);
    this._habilidade.usar();
  }
}

// ── Agregação: Time recebe array de Agentes já criados ───────
class Time {
  constructor(agentes) {
    this.agentes = agentes; // agregação: referência fraca — os agentes existem independentemente
  }

  iniciarPartida() {
    console.log("======= PARTIDA INICIADA =======");
    this.agentes.forEach((agente) => agente.entrarEmCombate());
  }

  // Filtra agentes cuja habilidade é do tipo Smoke
  listarControladores() {
    return this.agentes.filter(
      (agente) => agente.habilidade instanceof Smoke
    );
  }
}

// ── Main ─────────────────────────────────────────────────────
const omen    = new Agente("Omen",   "Controlador", new Smoke());
const skye    = new Agente("Skye",   "Iniciador",   new Flash());
const jett    = new Agente("Jett",   "Duelista",    new Dash());
const cypher  = new Agente("Cypher", "Sentinela",   new Armadilha());

const time = new Time([omen, skye, jett, cypher]);

time.iniciarPartida();

console.log("\n======= CONTROLADORES DO TIME =======");
const controladores = time.listarControladores();
if (controladores.length > 0) {
  controladores.forEach((a) =>
    console.log(`✔ ${a.nome} (${a.funcao}) é um controlador.`)
  );
} else {
  console.log("Nenhum controlador encontrado.");
}
