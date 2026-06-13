# IA_REPORT.md

## Identificação

- **Nome completo:Rodrigo Guimaraes Pinheiro Pascolato** 
- **Matrícula:388** 

---

## Ai utilizada

- **Ferramenta:** Chatgpt FREE (GPT-5.5) 

---

## Histórico de Prompts e Respostas

(COLOQUEI % PARA DIVIDIR AS PROMPTS PARA FICAR MAIS FACIL DE IDENTIFICAR)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

oieeeeeeeeeee to proggramando em lisp e quero q vc chheque os codigos q eu fiz e prinicpalmente o 2 e 4 q nao rodam, vou te mandar oq o exercicio pede e quero q vc veja se cumpre tudo q eh pedido

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Oieeeee 😂 manda sim!!

Me manda nessa ordem pra eu conseguir conferir direito:

O enunciado do exercício (pode ser foto ou texto)
Seu código Lisp completo
Se tiver, manda também:
qual interpretador está usando (SBCL, CLISP, Emacs, etc.)
o erro que aparece nos exercícios 2 e 4

Eu vou verificar:
✅ se o código roda
✅ onde está quebrando (sintaxe, lógica, chamada de função etc.)
✅ se ele realmente cumpre tudo que o exercício pede
✅ se tem alguma coisa que o professor pode descontar ponto
✅ e te devolvo uma versão corrigida explicando o que mudou

Pode mandar 👇😎 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

esses ai

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Boa, peguei todos 😂. Dei uma olhada no PDF e nos códigos. O professor está pedindo Common Lisp, apesar do PDF estar com cara de Haskell em alguns trechos (tipo :: Double ->), então vou avaliar pelo que seus arquivos realmente estão fazendo.

Resumo rápido:

Exercício	Roda?	Cumpre?
1	✅ Sim	✅ Praticamente tudo certo
2	❌ Não roda	⚠️ Tem 1 erro que quebra
3	✅ Sim	✅ Certo
4	❌ Não roda	⚠️ Tem 1 erro que quebra
Exercício 2 — erro

Seu código:

(defun filtraPorPerigo (lista)
  (remove-if (lambda (c) (eq (criatura-periculosidade c) 'baixa)) lst))

O problema é aqui:

lst

Você criou o parâmetro:

lista

mas usa outro nome. O Lisp vai falar que lst não existe.

Corrige para:

(defun filtraPorPerigo (lista)
  (remove-if 
    (lambda (c) 
      (eq (criatura-periculosidade c) 'baixa))
    lista))

Depois disso roda.

Sobre o exercício 2:

O enunciado pede:

✅ struct Criatura
✅ Periculosidade com Baixa Media Alta
Você fez usando símbolos:

'baixa
'media
'alta

Funciona.

✅ 4 criaturas
Você tem:

Peeper
Reaper Leviathan
Crabsquid
Ghost Leviathan

✅ filter para perigosas

Você usou remove-if, que é equivalente ao filter negado.

Pode passar, mas se o professor for chato ele pode querer remove-if-not. Eu mudaria para:

(defun filtraPorPerigo (lista)
  (remove-if-not 
    (lambda (c)
      (not (eq (criatura-periculosidade c) 'baixa)))
    lista))

fica mais parecido com o pedido.

Exercício 4 — erro

Aqui:

(defun valeAPena (l)
  (and (> (bonusElemental l) 500)
       (<= (local-dificuldade ll) 3)))

Você criou:

l

mas usa:

ll

Tem que ser:

(defun valeAPena (l)
  (and (> (bonusElemental l) 500)
       (<= (local-dificuldade l) 3)))
Exercício 4 depois disso:

Está quase perfeito.

Só um detalhe:

O enunciado pede:

"[NOME] — Recompensa: [VALOR]"

Você fez:

"~a - Recompensa: ~a"

Não é um erro grave, mas se quiser deixar idêntico:

(format nil "[~a] — Recompensa: ~a"
        (local-nome l)
        (bonusElemental l))
Exercício 1

Está bom.

Só uma observação:

O pedido da dosagem:

"crianças pequenas ou abaixo do peso"

Você fez:

(and (< idade 5) (< peso 20))

Isso significa que precisa ser os dois ao mesmo tempo.

Se for "idade OU peso", deveria ser:

(or (< idade 5) (< peso 20))

Eu mudaria.

Exercício 3

Esse está bem feito.

Você realmente fez a sequência:

filtra arma ✅
aplica imposto com mapcar ✅
aplica bônus com mapcar ✅
formata ✅

Então as correções mínimas são:

ex2.lisp

trocar lst → lista

ex4.lisp

trocar ll → l

ex1.lisp

trocar:

(and (< idade 5) (< peso 20))

por:

(or (< idade 5) (< peso 20))

Com isso os 4 ficam entregáveis 👍😎

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


LINK:https://chatgpt.com/share/6a2c9f43-9bbc-83e9-aafd-a102b86f3745

## Relatório de Satisfação e Aprendizado

utilizei mais para ver se tinha alguns erros de logicas que não tinha tanto, e ele acabou me apontando erros q cometi na hora de escrever mas fora isso foi so pra suporte (para saber se estava correto)
