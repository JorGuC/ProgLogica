funcionGrande :: (Float -> Float) -> [Float] -> [Float]
funcionGrande _ [] = []
funcionGrande f (x:xs) = f x : funcionGrande f xs

div2 :: Float -> Float
div2 n = n / 2

main :: IO ()
main = do
    let numeros = [1, 2, 3, 4, 5, 6]
    let numerosF = funcionGrande div2 numeros
    putStrLn $ "Numeros divididos: " ++ show numerosF