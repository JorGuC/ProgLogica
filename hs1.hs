import System.IO

seno :: Double -> Double
seno x = sin x

coseno :: Double -> Double
coseno x = cos x

tangente :: Double -> Double
tangente x = tan x

exponencial :: Double -> Double
exponencial x = exp x

logaritmoNeperiano :: Double -> Double
logaritmoNeperiano x = log x

-- Función principal que realiza los cálculos y muestra la tabla
calculadoraCientifica :: IO ()
calculadoraCientifica = do
  putStrLn "Ingrese el valor para el cual desea realizar los cálculos:"
  input <- getLine
  let valor = read input :: Double

  putStrLn "Seleccione la función a aplicar:"
  putStrLn "1.- Seno"
  putStrLn "2.- Coseno"
  putStrLn "3.- Tangente"
  putStrLn "4.- Exponencial"
  putStrLn "5.- Logaritmo Neperiano"

  opcionInput <- getLine
  let opcion = read opcionInput :: Int

  let funcion =
        case opcion of
          1 -> seno
          2 -> coseno
          3 -> tangente
          4 -> exponencial
          5 -> logaritmoNeperiano
          _ -> error "Opción no válida"

  putStrLn "Tabla de resultados:"
  putStrLn "===================="
  putStrLn "  Entero   |   Resultado"
  putStrLn "------------------------"
  mapM_ (\x -> putStrLn $ "    " ++ show x ++ "    |   " ++ show (funcion (fromIntegral x))) [1..floor valor]
  putStrLn "===================="

-- Función principal que ejecuta la calculadora
main :: IO ()
main = do

  calculadoraCientifica
