desc :: Double -> Double -> Double
desc precio descuentoParametro = precio - precio * descuentoParametro / 100

imp :: Double -> Double -> Double
imp precio iva = precio + precio * iva / 100

precioFinal :: [(Double, Double)] -> (Double -> Double -> Double) -> Double
precioFinal [] _ = 0
precioFinal ((precio, descuento):resto) funcion =
    funcion precio descuento + precioFinal resto funcion


main :: IO ()
main = do
    let canasta = [(134, 10), (40, 15), (3, 20)]
    let precioConDescuento = precioFinal canasta desc
    let precioConIVA = precioFinal canasta imp

    putStrLn $ "Precio con descuento: " ++ show precioConDescuento
    putStrLn $ "Precio con IVA: " ++ show precioConIVA

