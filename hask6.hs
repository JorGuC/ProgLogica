module Main where

-- Función para calcular la media de una lista de números
calcularMedia :: (Fractional a) => [a] -> a
calcularMedia xs = sum xs / fromIntegral (length xs)

-- Función para calcular la desviación estándar de una lista de números
calcularDesviacionEstandar :: (Floating a) => [a] -> a
calcularDesviacionEstandar xs =
  let m = calcularMedia xs
      n = fromIntegral $ length xs
      squaredDiffs = map (\x -> (x - m) ^ 2) xs
  in sqrt (sum squaredDiffs / n)

-- Función para determinar si un valor es atípico en función de la media y la desviación estándar
esAtipico :: (Floating a, Ord a) => [a] -> a -> Bool
esAtipico muestra n =
  let mediaMuestra = calcularMedia muestra
      desviacion = calcularDesviacionEstandar muestra
      puntuacion = (n - mediaMuestra) / desviacion
  in puntuacion < -3 || puntuacion > 3

-- Función para filtrar los datos atípicos de una muestra
filtrarDatosAtipicos :: (Floating a, Ord a) => [a] -> [a]
filtrarDatosAtipicos muestra = filter (esAtipico muestra) muestra

main :: IO ()
main = print $ filtrarDatosAtipicos [16.0, 179.0, 34.0, 89.4, 150.0, 5.0, 600.0, 180.0, 10.0, 130.0, 115.0, 40.0]
