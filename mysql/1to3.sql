

/*
Ejercicio 1:
SELECT NombreVendedor,Producto 
FROM vendedores,ventas
WHERE vendedores.IdVendedor = ventas.Vendedor;
Ej2:
Obtener la lista de las ventas pero con el nombre
 del producto en lugar del código.

SELECT productos.NomProducto as Producto,ventas.Kilos
FROM productos,ventas
WHERE productos.IdProducto = ventas.Producto;
Ej3:
Obtener la lista de las ventas [ventas]
pero con el nombre [vendedores]
del producto [productos] y
quién lo vendió.
SELECT vendedores.NombreVendedor as Nombre_Vendedor, productos.NomProducto as Producto, 
ventas.Kilos
FROM ventas,productos,vendedores
WHERE vendedores.IdVendedor = ventas.Vendedor 
AND ventas.producto = productos.IdProducto ;
#vendendor, producto, kilos


*/



