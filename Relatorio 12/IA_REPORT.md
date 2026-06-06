# IA_REPORT.md

## Identificação

- **Nome completo:Rodrigo Guimaraes Pinheiro Pascolato** 
- **Matrícula:388** 

---

## Ai utilizada

- **Ferramenta:** Chatgpt FREE (GPT-5.5) 

---

## Histórico de Prompts e Respostas
_________________________________________________________________________________________________________________________

estou fazendo uma atividade de paradigmas da programcao q eh esse pdf baseado no enunciado pq meu codgio n esta rodando e esta dando errado data Bebida = Bebida { nome :: String , tipo :: String , preco :: Double } data StatusPedido = Aberto | Entregue | Cancelado data Pedido = Pedido { bebidas :: [Bebida] , status :: StatusPedido } valorTotalPedido :: Pedido -> Double valorTotalPedido p | Cancelado <- status p = 0.0 | otherwise = sum (map preco (bebidas p)) primeiraBebida : Pedido -> String primeiraBebida p = case bebidas p of [] -> "nenhuma bebida no pedido" (x:_) -> nome x main :: IO () main = do let b1 = Bebida "cafe dodia" "quente" 5.0 b2 = Bebida "suco de laranja" "frio" 7.5 b3 = Bebida "esprresso" "quente" 6.0 let pedido1 = Pedido [b1, b2] Entregue let pedido2 = Pedido [b3] Cancelado putStrLn ("total pedido 1: R$ " ++ show (valorTotalPedido pedido1)) putStrLn ("total pedido 2: R$ " ++ show (valorTotalPedido pedido2)) putStrLn ("primeira bebida pedido 1: " ++ primeiraBebida pedido1)

_________________________________________________________________________________________________________________________

Pelo enunciado do PDF, a lógica está certa. O problema é que seu código tem alguns erros de sintaxe do Haskell.

1. Erro na assinatura da função

Você escreveu:

primeiraBebida : Pedido -> String

Em Haskell, a assinatura de tipo usa dois pontos:

primeiraBebida :: Pedido -> String
2. Erro na definição dos tipos data

Se você quer usar a sintaxe de registros (campos nomeados), precisa derivar pelo menos Show para conseguir imprimir depois sem problemas:

data Bebida = Bebida
  { nome  :: String
  , tipo  :: String
  , preco :: Double
  } deriving Show

data StatusPedido = Aberto | Entregue | Cancelado
  deriving Show

data Pedido = Pedido
  { bebidas :: [Bebida]
  , status  :: StatusPedido
  } deriving Show
3. Código completo corrigido
data Bebida = Bebida
  { nome  :: String
  , tipo  :: String
  , preco :: Double
  } deriving Show

data StatusPedido = Aberto | Entregue | Cancelado
  deriving Show

data Pedido = Pedido
  { bebidas :: [Bebida]
  , status  :: StatusPedido
  } deriving Show

valorTotalPedido :: Pedido -> Double
valorTotalPedido p
  | Cancelado <- status p = 0.0
  | otherwise = sum (map preco (bebidas p))

primeiraBebida :: Pedido -> String
primeiraBebida p =
  case bebidas p of
    []    -> "nenhuma bebida no pedido"
    (x:_) -> nome x

main :: IO ()
main = do
  let b1 = Bebida "cafe do dia" "quente" 5.0
      b2 = Bebida "suco de laranja" "frio" 7.5
      b3 = Bebida "espresso" "quente" 6.0

  let pedido1 = Pedido [b1, b2] Entregue
  let pedido2 = Pedido [b3] Cancelado

  putStrLn ("total pedido 1: R$ " ++ show (valorTotalPedido pedido1))
  putStrLn ("total pedido 2: R$ " ++ show (valorTotalPedido pedido2))
  putStrLn ("primeira bebida pedido 1: " ++ primeiraBebida pedido1)
4. Se ainda estiver dando erro

Me mande a mensagem exata do compilador (GHCi), porque pelo enunciado do exercício a implementação está seguindo corretamente o que foi pedido: uso de data, guards, map, sum e pattern matching na lista de bebidas.

_________________________________________________________________________________________________________________________

data Bebida = Bebida { nome :: String , tipo :: String , preco :: Double } deriving Show data StatusPedido = Aberto | Entregue | Cancelado deriving Show data Pedido = Pedido { bebidas :: [Bebida] , status :: StatusPedido } deriving Show valorTotalPedido :: Pedido -> Double valorTotalPedido p | Cancelado <- status p = 0.0 | otherwise = sum (map preco (bebidas p)) primeiraBebida :: Pedido -> String primeiraBebida p = case bebidas p of [] -> "nenhuma bebida no pedido" (x:_) -> nome x main :: IO () main = do let b1 = Bebida "cappucino com canela" "quente" 2.0 b2 = Bebida "suco" "frio" 5.0 b3 = Bebida "cafe curto" "quente" 1.5 let pedido1 = Pedido [b1, b2] Entregue let pedido2 = Pedido [b3] Cancelado putStrLn ("total pedido 1: R$ " ++ show (valorTotalPedido pedido1)) putStrLn ("total pedido 2: R$ " ++ show (valorTotalPedido pedido2)) putStrLn ("primeira bebida pedido 1: " ++ primeiraBebida pedido1) funciona?

_________________________________________________________________________________________________________________________

Sim, esse código está correto e deve compilar normalmente no GHC.

A saída esperada será algo parecido com:

total pedido 1: R$ 7.0
total pedido 2: R$ 0.0
primeira bebida pedido 1: cappucino com canela

Porque:

pedido1 contém bebidas de R$ 2,00 e R$ 5,00 → total = R$ 7,00.
pedido2 está Cancelado → a guard retorna 0.0.
A primeira bebida de pedido1 é "cappucino com canela".

Se estiver dando erro no VS Code/GHCi, os problemas mais comuns são:

Arquivo não salvo com extensão .hs.
Falta de uma linha module Main where (alguns ambientes exigem).
Você está compilando um arquivo antigo.
O GHC não está instalado/configurado corretamente.

Qual é a mensagem de erro que aparece quando você executa?

ghci seuArquivo.hs

ou

runghc seuArquivo.hs

Cole o erro exato que eu identifico o problema.

_________________________________________________________________________________________________________________________

ja descobri onde esta o problema

_________________________________________________________________________________________________________________________

Boa! Qual era o problema?

Se foi erro de compilação, sintaxe ou alguma configuração do GHC/VS Code, me conta. Pode ser útil também para conferir se não tem mais nenhum detalhe que possa dar problema na hora de entregar a atividade.

_________________________________________________________________________________________________________________________

data Item = Item { nomeItem :: String , categoria :: String , precoItem :: Double } data StatusCompra = Pendente | Concluida | Cancelada data Compra = Compra { itens :: [Item] , statusCompra :: StatusCompra } totalItens :: [Item] -> Double totalItens xs = sum (map precoItem xs) valorFinal :: Compra -> Double valorFinal c | statusCompra c == Cancelada = 0.0 | total > 200 = total * 0.9 | otherwise = total where total = totalItens (itens c) main :: IO () main = do let i1 = Item "escudo" "equipamento" 150.0 i2 = Item "pocao" "consumivel" 45.0 i3 = Item "arco" "equipamento" 80.0 let compra = Compra [i1, i2, i3] Concluida putStrLn ("valor final da compra: R$ " ++ show (valorFinal compra)) tem algum erro aqui?

_________________________________________________________________________________________________________________________

Tem um erro provável aí.

Você está usando:

| statusCompra c == Cancelada = 0.0

Para comparar valores com ==, o tipo precisa implementar Eq. Seu StatusCompra não derivou Eq:

data StatusCompra = Pendente | Concluida | Cancelada

Deveria ser:

data StatusCompra = Pendente | Concluida | Cancelada
  deriving (Eq, Show)

Ou então seguir o mesmo estilo do Exercício 1 usando pattern matching no guard:

valorFinal :: Compra -> Double
valorFinal c
  | Cancelada <- statusCompra c = 0.0
  | total > 200                 = total * 0.9
  | otherwise                   = total
  where total = totalItens (itens c)

Assim você nem precisa de Eq.

Fora isso, a lógica está correta para o Exercício 2 do PDF:

Soma os preços com map e sum.
Retorna 0.0 se cancelada.
Aplica 10% de desconto quando passar de 200.
Retorna o valor normal nos demais casos.

Com os seus valores:

150 + 45 + 80 = 275

Como 275 > 200, o resultado será:

275 * 0.9 = 247.5

Saída:

valor final da compra: R$ 247.5
_________________________________________________________________________________________________________________________

data Banda = Banda
  { nomeBanda :: String
  , genero    :: String
  , cache     :: Double
  }


data StatusEvento = Ativo | Encerrado | Cancelado
data Evento = Evento
  { bandas      :: [Banda]
  , statusEvento :: StatusEvento
  }


custoTotalEvento :: Evento -> Double
custoTotalEvento e
  | statusEvento e == Cancelado = 0.0
  | otherwise                   = total * 1.2
  where total = sum (map cache (bandas  e))

bandaAbertura :: Evento -> String
bandaAbertura e = case bandas e of
  []    -> "nenhuma banda no evento"
  (x:_) -> nomeBanda x

bandaEncerramento :: Evento -> String
bandaEncerramento e
  | null (bandas e) = "nenhuma banda no evento"
  | otherwise       = nomeBanda (last (bandas e))

main :: IO ()
main = do
  let b1 = Banda "linkin park" "rock" 7000.0
      b2 = Banda "deftones" "rock" 5000.0
      b3 = Banda "m4rkin" "geek" 4100.0

  let ev1 = Evento [b1, b2, b3] Ativo
  let ev2 = Evento [b2, b3] Encerrado
  let ev3 = Evento [b1] Cancelado
  putStrLn ("custo: R$ " ++ show (custoTotalEvento ev1))
  putStrLn ("abertura: " ++ bandaAbertura ev1)
  putStrLn ("encerramento: " ++ bandaEncerramento ev1)

  putStrLn ("custo: R$ " ++ show (custoTotalEvento ev2))
  putStrLn ("abertura: " ++ bandaAbertura ev2)
  putStrLn ("encerramento: " ++ bandaEncerramento ev2)

  putStrLn ("custo: R$ " ++ show (custoTotalEvento ev3))
  putStrLn ("abertura: " ++ bandaAbertura ev3)
  putStrLn ("encerramento: " ++ bandaEncerramento ev3) pq n ta rodando?

_________________________________________________________________________________________________________________________

O problema mais provável é exatamente o mesmo do exercício anterior.

Você está usando:

| statusEvento e == Cancelado = 0.0

Mas seu tipo:

data StatusEvento = Ativo | Encerrado | Cancelado

não implementa Eq, então o operador == não funciona.

Opção 1 (mais simples)

Troque para:

data StatusEvento = Ativo | Encerrado | Cancelado
  deriving (Eq, Show)
Opção 2 (igual ao Exercício 1)

Nem use ==:

custoTotalEvento :: Evento -> Double
custoTotalEvento e
  | Cancelado <- statusEvento e = 0.0
  | otherwise                   = total * 1.2
  where total = sum (map cache (bandas e))

Outro detalhe: se aparecer erro falando que Cancelado está definido mais de uma vez, é porque você colocou os exercícios 1, 2 e 3 no mesmo arquivo.

Você já tem:

data StatusPedido = Aberto | Entregue | Cancelado

e depois:

data StatusEvento = Ativo | Encerrado | Cancelado

Em Haskell, construtores precisam ter nomes únicos dentro do módulo. Nesse caso você teria que renomear, por exemplo:

data StatusEvento = Ativo | Encerrado | EventoCancelado

e usar:

| EventoCancelado <- statusEvento e = 0.0

Se ainda não compilar, me mande a mensagem exata do erro do GHC. O código que você postou está correto em termos de lógica; o problema deve ser de compilação (falta de Eq ou construtor Cancelado duplicado).

_________________________________________________________________________________________________________________________

mas qual a brisa de usar isso?

_________________________________________________________________________________________________________________________

A "brisa" do deriving (Eq) é que o operador == não sabe comparar tipos que você criou sozinho.

Por exemplo, isso funciona:

5 == 5

porque Int já implementa Eq.

Mas quando você cria:

data StatusEvento = Ativo | Encerrado | Cancelado

o Haskell não assume automaticamente que dois StatusEvento podem ser comparados.

Então:

statusEvento e == Cancelado

gera um erro do tipo:

No instance for (Eq StatusEvento)

Quando você escreve:

data StatusEvento = Ativo | Encerrado | Cancelado
  deriving Eq

o compilador gera automaticamente algo equivalente a:

Ativo == Ativo = True
Encerrado == Encerrado = True
Cancelado == Cancelado = True
_ == _ = False

Mas no seu PDF o professor está incentivando usar guards com pattern matching, então eu faria assim:

custoTotalEvento e
  | Cancelado <- statusEvento e = 0.0
  | otherwise                   = total * 1.2
  where total = sum (map cache (bandas e))

Isso não precisa de Eq e segue mais a ideia de Programação Funcional que ele está mostrando nos slides (pattern matching em vez de comparações).

Então, para a prova/trabalho:

Se usar == → precisa de deriving Eq.
Se usar | Cancelado <- statusEvento e → não precisa de Eq.
Pelo material do professor, eu apostaria que ele prefere a segunda forma.
_________________________________________________________________________________________________________________________


LINK:https://chatgpt.com/share/6a236b6d-6b1c-83e9-b531-d0e0496ca7ff

## Relatório de Satisfação e Aprendizado

utilizei ele para aprender principalemte a parte do (deriving (Eq)) que eu esquecia e também usei para corrigir erros e quando o código não rodava (aconteceu varias vezes)
