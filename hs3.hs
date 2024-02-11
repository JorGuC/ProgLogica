calif :: [Int] -> [String]
calif calificaciones = map clasif calificaciones
  where
    clasif calificacion
      | calificacion >= 95 && calificacion <= 100 = "Excelente "
      | calificacion >= 85 && calificacion <= 94  = "Notable "
      | calificacion >= 75 && calificacion <= 84  = "Bueno "
      | calificacion >= 70 && calificacion <= 74  = "Suficiente "
      | otherwise                                 = "Insuficiente "


main :: IO ()
main = do
  let notas = [98, 87, 80, 72, 65, 70, 29]
  let calificacionesResultantes = calif notas
  putStrLn $ "Notas originales: " ++ show notas
  putStrLn $ "Calificaciones correspondientes: " ++ show calificacionesResultantes
