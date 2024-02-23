-- Suma de elementos en una lista
sumarLista :: [Int] -> Int
sumarLista = foldr (+) 0

-- Factorial
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)

-- Números pares
numerosPares :: Int -> [Int]
numerosPares n = [x | x <- [2,4..n]]

-- Longitud de una cadena
longitudCadena :: String -> Int
longitudCadena = length

-- Reverso de una lista
reversoLista :: [a] -> [a]
reversoLista = reverse

-- Duplicar elementos
duplicarElementos :: [Int] -> [Int]
duplicarElementos = map (*2)

-- Filtrar elementos pares
filtrarPares :: [Int] -> [Int]
filtrarPares = filter even

-- Fibonacci
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

-- Divisores de un número
divisores :: Int -> [Int]
divisores n = [x | x <- [1..n], n `mod` x == 0]

-- Palíndromo
esPalindromo :: String -> Bool
esPalindromo s = s == reverse s
