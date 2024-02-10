import qualified Data.Map as Map

-- Función que toma un diccionario con asignaturas y notas, y devuelve un nuevo diccionario con asignaturas en mayúsculas y calificaciones.
calificarAlumno :: Map.Map String Int -> Map.Map String String
calificarAlumno diccionarioNotas = Map.map calificarNota diccionarioNotas

-- Función auxiliar que toma una nota y devuelve la calificación correspondiente.
calificarNota :: Int -> String
calificarNota nota
    | nota >= 95 = "Excelente"
    | nota >= 85 = "Notable"
    | nota >= 75 = "Bueno"
    | nota >= 70 = "Suficiente"
    | otherwise = "Desempeño insuficiente"

main :: IO ()
main = do
    let notasAlumno = Map.fromList [("Matematicas", 44), ("Historia", 78), ("Ciencias", 88)]
    let calificaciones = calificarAlumno notasAlumno
    putStrLn $ "Calificaciones del alumno: " ++ show calificaciones
