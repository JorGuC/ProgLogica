import Data.Char (toUpper)

type Asignatura = String
type Nota = Int
type Calificacion = String

aprobar :: Nota -> Calificacion
aprobar calificacion
  | calificacion >= 95 && calificacion <= 100 = "Excelente"
  | calificacion >= 85 && calificacion <= 94  = "Notable"
  | calificacion >= 75 && calificacion <= 84  = "Bueno"
  | calificacion >= 70 && calificacion <= 74  = "Suficiente"
  | otherwise                                 = "Desempeño insuficiente"

aprobarAsignaturas :: [(Asignatura, Nota)] -> [(Asignatura, Calificacion)]
aprobarAsignaturas asignaturasNotas = map (\(asignatura, nota) -> (map toUpper asignatura, aprobar nota)) asignaturasNotas


main :: IO ()
main = do
  let notas = [("Matematicas", 98), ("Historia", 82), ("Ciencias", 70)]
  let calificacionesAprobadas = aprobarAsignaturas notas
  putStrLn $ "Calificaciones aprobadas: " ++ show calificacionesAprobadas
