calcularModulo :: [Double] -> Double
calcularModulo vector = sqrt (sum (map (\x -> x ^ 2) vector))

main :: IO ()
main = do
    let miVector = [8.0, 44.0, 3.0]  -- Ejemplo de un vector
    let modulo = calcularModulo miVector
    putStrLn $ "El módulo del vector " ++ show miVector ++ " es: " ++ show modulo