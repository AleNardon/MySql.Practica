
select * from personal.departamentos;

select * from personal.empleados;

select * from empleados empl left join departamentos dptos on empl.id_depto = dptos.id_depto;

select * from departamentos dptos right join empleados empl on empl.id_depto = dptos.id_depto order by dptos.id_depto;

select nombre_depto from departamentos group by nombre_depto ;

select comision_emp as comisiones from empleados group by comision_emp order by comision_emp;

select * from empleados where cargo_emp='Secretaria';

-- 7
select * from empleados where cargo_emp='Vendedor' order by nombre;

-- 8
select nombre as 'Nombre',cargo_emp as 'Cargo en la Empresa' from empleados order by sal_emp desc;

-- 9 ERROR COMO HACER PARA PONER TODAS LAS COLUMNAS Y DARLE ALIAS A UNAS SOLAS
select *, nombre as 'nombre ', cargo_emp as 'cargo'   from empleados ;

-- 10
select sal_emp as 'Salarios', comision_emp as 'Comision' from empleados where id_depto=2000 order by comision_emp asc;

-- 11
select nombre, sum(comision_emp) + sum(sal_emp) as 'total a pagar' from personal.empleados group by id_depto>3000 and id_emp>500 order by nombre desc; 

-- 12
select * from personal.empleados where nombre  like 'J%';

-- 13
select sal_emp as 'Salario',comision_emp as 'Comision', sum(sal_emp)+sum(comision_emp) as 'TOTAL', nombre as 'Nombre' from personal.empleados where comision_emp>1000;

-- 14
select sal_emp as 'Salario',comision_emp as 'Comision', sum(sal_emp)+sum(comision_emp) as 'TOTAL', nombre as 'Nombre' from personal.empleados where comision_emp=0 or comision_emp=null ;

-- 15
select sal_emp as 'Salario',comision_emp as 'Comision', nombre as 'Nombre' from personal.empleados where comision_emp>=sal_emp ;

-- 16
select sal_emp as 'Salario',comision_emp as 'Comision', nombre as 'Nombre' from personal.empleados where comision_emp<=((sal_emp*30)/100) ;

-- 17 
select * from personal.empleados where nombre not like '%ma%' ;

-- 18
select *  from personal.departamentos where nombre_depto = 'MANTENIMIENTO' or nombre_depto = 'VENTAS' or nombre_depto = 'INVESTIGACIÓN' ;

-- 19or 
select * from personal.departamentos where nombre_depto != 'MANTENIMIENTO' and nombre_depto != 'VENTAS' and nombre_depto != 'INVESTIGACIÓN' ;

-- 20
select MAX(sal_emp) as 'Salario mas Altoo' from personal.empleados ;

-- 21
select * from personal.empleados where (sal_emp = (select min(sal_emp) from personal.empleados));

-- 22
select max(sal_emp) as 'maximo salario',min(sal_emp) as 'minimo salario', max(sal_emp)- min(sal_emp) as 'Diferencia SAL' from personal.empleados;

-- 23
