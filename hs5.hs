type Inmueble = [(String, Either Int Bool)]

calcularPrecio :: Inmueble -> Double
calcularPrecio inmueble =
    let metros = case lookup "metros" inmueble of Just (Left m) -> fromIntegral m
    habitaciones = case lookup "habitaciones" inmueble of Just (Left h) -> fromIntegral h
    garaje = case lookup "garaje" inmueble of Just (Right g) -> if g then 1.0 else 0.0
    antiguedad = 2024 - case lookup "año" inmueble of Just (Left a) -> a
    zonaFactor = case lookup "zona" inmueble of
        Just (Left "A") -> 1.0
        Just (Left "B") -> 1.5
        _ -> error "Zona no válida"

    in (metros * 1000 + habitaciones * 5000 + garaje * 15000) * (1 - fromIntegral antiguedad / 100) * zonaFactor

buscarInmueblesPorPresupuesto :: [Inmueble] -> Double -> [Inmueble]
buscarInmueblesPorPresupuesto inmuebles presupuesto =
    filter (\inmueble -> calcularPrecio inmueble <= presupuesto) inmuebles

-- Ejemplo de uso:
main :: IO ()
main = do
    let inmuebles = [
            [("año", Left 2000), ("metros", Left 100), ("habitaciones", Left 3), ("garaje", Right True), ("zona", Left "A")],
            [("año", Left 2012), ("metros", Left 60), ("habitaciones", Left 2), ("garaje", Right True), ("zona", Left "B")],
            [("año", Left 1980), ("metros", Left 120), ("habitaciones", Left 4), ("garaje", Right False), ("zona", Left "A")],
            [("año", Left 2005), ("metros", Left 75), ("habitaciones", Left 3), ("garaje", Right True), ("zona", Left "B")],
            [("año", Left 2015), ("metros", Left 90), ("habitaciones", Left 2), ("garaje", Right False), ("zona", Left "A")]
        ]
    let presupuestoDado = 120000.0

    let inmueblesEnPresupuesto = buscarInmueblesPorPresupuesto inmuebles presupuestoDado

    putStrLn "Inmuebles en presupuesto:"
    mapM_ print inmueblesEnPresupuesto
