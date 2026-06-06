data Servico = Servico
  { nomeServico :: String
  , tipoServico :: String
  , precoServico :: Double
  }

data StatusAtendimento = EmAndamento | Finalizado | Cancelado
  deriving (Eq, Show)
data Atendimento = Atendimento
  { servicos        :: [Servico]
  , statusAtendimento :: StatusAtendimento
  }


totalServicos :: [Servico] -> Double
totalServicos xs = sum (map precoServico xs)

valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento a
  | statusAtendimento a == Cancelado   = 0.0
  | length (servicos a) > 3 = total * 1.25
  | otherwise                          = total
  where total = totalServicos (servicos a)

primeiroServico :: Atendimento -> String
primeiroServico a = case servicos a of
  []    -> "nenhum servico registrado"
  (x:_) -> nomeServico x

main :: IO ()
main = do

  let s1 = Servico "banho" "limpeza" 80.0
      s2 = Servico "fonte termal" "limpeza" 120.0
      s3 = Servico "massagem nos pes" "relaxamento" 60.0
      s4 = Servico "massagem nas costas" "relaxamento" 70.0

  let at1 = Atendimento [s1, s2] Finalizado
  let at2 = Atendimento [s1, s2, s3, s4] EmAndamento
  putStrLn ("valor final atendimento 1: R$ " ++ show (valorFinalAtendimento at1))
  putStrLn ("primeiro servico: " ++ primeiroServico at1)
  putStrLn ("valor final atendimento 2: R$ " ++ show (valorFinalAtendimento at2))
  putStrLn ("primeiro servico: " ++ primeiroServico at2)
