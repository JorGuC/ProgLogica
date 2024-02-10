import qualified Data.Map as Map  -- Importa el módulo Data.Map y califícalo como Map

-- Función que toma una frase y devuelve un diccionario con las palabras y sus longitudes.
obtenerLongitudes :: String -> Map.Map String Int
obtenerLongitudes frase = Map.fromListWith max (palabrasConLongitud frase)

-- Función que toma una frase y devuelve una lista de tuplas (palabra, longitud).
palabrasConLongitud :: String -> [(String, Int)]
palabrasConLongitud frase = map (\palabra -> (palabra, length palabra)) (palabras frase)

-- Función que toma una cadena y devuelve una lista de palabras.
palabras :: String -> [String]
palabras = words

main :: IO ()
main = do
    let frase = "Hola buenas noches"  -- Define una frase de ejemplo.
    let diccionarioLongitudes = obtenerLongitudes frase  -- Obtiene el diccionario de longitudes.
    putStrLn $ "Diccionario de longitudes: " ++ show diccionarioLongitudes  -- Imprime el diccionario de longitudes.
