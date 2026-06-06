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
  let b1 = Bebida "cappucino com canela" "quente" 2.0
      b2 = Bebida "suco" "frio" 5.0
      b3 = Bebida "cafe curto" "quente" 1.5

  let pedido1 = Pedido [b1, b2] Entregue
  let pedido2 = Pedido [b3] Cancelado

  putStrLn ("total pedido 1: R$ " ++ show (valorTotalPedido pedido1))
  putStrLn ("total pedido 2: R$ " ++ show (valorTotalPedido pedido2))
  putStrLn ("primeira bebida pedido 1: " ++ primeiraBebida pedido1)