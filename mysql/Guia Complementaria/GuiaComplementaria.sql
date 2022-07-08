#4
SELECT *
FROM empleado
WHERE empleado.cargoE = 'Secretaria';
#Obtener los datos de personal con cargo 'Secretaria'.

#4. Obtener el nombre y salario de los/las empleados/as.

SELECT empleado.nomEmp AS NombreEmpleado, empleado.salEmp AS SALARIO
FROM empresa.empleado
;

#5. Obtener los datos de vendedores, ordenado por nombre.

SELECT 
    *
FROM
    empresa.empleado
WHERE
    empleado.cargoE = 'Vendedor'
ORDER BY empleado.nomEmp;

#6
SELECT nombreDpto FROM empresa.departamento;

#9. 
SELECT 
    departamento.nombreDpto
FROM
    empresa.departamento
ORDER BY departamento.ciudad DESC
;

#14. Obtener el valor 
# total a pagar que resulta 
# de sumar al personal del 
#departamento 3000
# una bonificación de $500.000,
# en orden alfabético por nombre.
SELECT departamento.nombreDpto, (SUM(empleado.salEmp)+500000) as Total
FROM departamento
INNER JOIN empleado ON departamento.codDepto = empleado.codDepto
WHERE empleado.codDepto = '3000'
GROUP BY departamento.codDepto
ORDER BY empleado.nomEmp

# Listar los salarios y comisiones del personal del departamento 2000
USE empresa;
SELECT e.salEmp, e.comisionE FROM empleado AS e
INNER JOIN departamento ON departamento.codDepto = empleado.codDepto
WHERE empleado.codDepto = 2000;
# Listar los salarios y comisiones del personal del departamento 2000, 
# ordenado por comisión
USE empresa;
SELECT e.salEmp, e.comisionE FROM empleado AS e
INNER JOIN departamento ON departamento.codDepto = e.codDepto
WHERE e.codDepto = 2000
ORDER BY e.comisionE;
# Listar todas las comisiones
SELECT comisionE FROM empleado;

#15. Listar los empleados 
#cuya comisión es menor o igual que el 30% de su sueldo.

SELECT *
FROM empleado 
WHERE empleado.comisionE <= (empleado.salEmp * 0.30);

#21. Obtener los nombres de los departamentos que no 
#sean “Ventas” ni “Investigación” ni ‘MANTENIMIENTO’, ordenados por ciudad

SELECT 
    *
FROM
    departamento
WHERE
    NOT nombreDpto IN ('Ventas' , 'Investigación', 'MANTENIMIENTO')
ORDER BY ciudad
;