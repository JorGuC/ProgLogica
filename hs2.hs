filtrarCondicional :: (a -> Bool) -> [a] -> [a]
filtrarCondicional _ [] = []  -- Caso base: lista vacía
filtrarCondicional f (x:xs)
  | f x       = x : filtrarCondicional f xs  -- Agrega x a la lista si f x es True
  | otherwise = filtrarCondicional f xs      -- Omite x si f x es False

-- Ejemplo de uso
main :: IO ()
main = do
  let listaOriginal = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 

  let condicion = (\x -> x `mod` 2 == 0)  -- Función que devuelve True para números pares
  let listaFiltrada = filtrarCondicional condicion listaOriginal

  putStrLn "Lista filtrada (números pares):"
  print listaFiltrada
