
/*
# Obtener el nombre de quien más kilos vendió.
SELECT NombreVendedor, 
	(SELECT SUM(Kilos) 
    FROM verduleria.ventas 
    WHERE vendedores.IdVendedor = ventas.Vendedor)AS KilosTotal 
FROM vendedores
ORDER BY KilosTotal DESC
LIMIT 1;

# Cuántos Kilos de Tomates se han vendido.

SELECT SUM(Kilos) as 'KilosVendidos' FROM verduleria.ventas
WHERE ventas.Producto = (SELECT IdProducto FROM productos WHERE NomProducto = 'Tomates');

#hacer el 6

7.
Obtener cuál fue el producto 
más vendido del grupo de "Hortalizas"
SELECT DISTINCT productos.NomProducto,
	(SELECT  SUM(ventas.Kilos)
    FROM ventas
    WHERE ventas.Producto = productos.IdProducto) as TotalKilos
FROM productos
INNER JOIN ventas ON ventas.Producto = productos.IdProducto
WHERE productos.IdGrupo = '3'
ORDER BY TOTALKILOS DESC
LIMIT 1;

#no hice tdv
Obtener los datos de la persona que menos kilos vendió,
 e informar el nombre del producto y del grupo
 al que corresponde esa venta

*/


/*

Obtener los totales de ventas por producto.
SELECT DISTINCT 
    productos.NomProducto as Nombre
    ,
    Producto
    ,
    (
    SELECT COUNT(ventas.Producto)
    FROM ventas
    WHERE productos.IdProducto = ventas.Producto 
    ) as CantidadDeVentas
    ,
    (
    SELECT SUM(ventas.Kilos)
    FROM ventas
    WHERE productos.IdProducto = ventas.Producto 
    ) as TotalDeKilos
FROM ventas
INNER JOIN productos ON productos.IdProducto = ventas.Producto
;


*/



