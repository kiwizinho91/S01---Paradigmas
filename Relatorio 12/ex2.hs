data Item = Item
  { nomeItem  :: String
  , categoria :: String
  , precoItem :: Double
  }

data StatusCompra = Pendente | Concluida | Cancelada
  deriving (Eq, Show)
data Compra = Compra
  { itens        :: [Item]
  , statusCompra :: StatusCompra
  }

totalItens :: [Item] -> Double
totalItens xs = sum (map precoItem xs)


valorFinal :: Compra -> Double

valorFinal c
  | statusCompra c == Cancelada = 0.0
  | total > 200                 = total * 0.9
  | otherwise                   = total
  where total = totalItens (itens c)





main :: IO ()
main = do
  let i1 = Item "escudo" "equipamento" 150.0
      i2 = Item "pocao" "consumivel" 45.0
      i3 = Item "arco" "equipamento" 80.0
  let compra = Compra [i1, i2, i3] Concluida
  putStrLn ("valor final da compra: R$ " ++ show (valorFinal compra))
