--Toma un numero entero y utiliza la lista de words para obtener el numero relacionado de la lista con el numero tomado, representandolo en su forma escrita
lessThan20 :: Int -> String
lessThan20 n |
    n > 0 && n < 20 =
    let answers = words ("one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen")
    in answers !! (n-1)
-- Toma un entero del 2 al 9 y correspondientemente les agrega la terminacion tys, el cual es para representar las decenas en inglés
tysa :: Int -> String
tysa n | n >= 2 && n <= 9 =
    answers !! (n-2)
    where
        answers = words("twenty thirty forty fifty sixty seventy eighty ninety")
--Hace uso de ambas funciones anteriores y mediante el uso de mod identifica si es divisor de 5, 3 o ambos, o en caso contrario escribe el numero en letra
number :: Int -> String
number n 
    | n `mod` 3 == 0 && n `mod` 5 == 0 = "FizzBuzz" 
    | n `mod` 3 == 0 = "Fizz"
    | n `mod` 5 == 0 = "Buzz"
    | 1 <= n && n<20 = lessThan20(n) 
    | n `mod` 10 == 0 && n < 100 = tysa (n `div` 10)
    | n < 100 = tysa(n `div` 10) ++ " " ++ lessThan20(n `mod` 10)