data Banda = Banda
  { nomeBanda :: String
  , genero    :: String
  , cache     :: Double
  }


data StatusEvento = Ativo | Encerrado | Cancelado
  deriving (Eq, Show)
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
  putStrLn ("encerramento: " ++ bandaEncerramento ev3)
