/*Ejercicio 1*/
/*1º Forma*/

create or replace function es_jefe(v_es_jefe number)
return number
is
    cursor c_jefe(v_es_jefe empleados.COD_JEFE%type) is
        select COD_EMP,NOMBRE,APELLIDO1,APELLIDO2,COD_JEFE
        from EMPLEADOS
        where COD_JEFE=v_es_jefe;
begin
    for r_jefe in c_jefe loop
    v_es_jefe >0;
    exit when v_es_jefe<1;
    end loop;
end;

/*2º Forma*/

create or replace function es_jefe(v_es_jefe number)
return number
is
    v_jefe number :=0;
    begin
        select count(*) into v_jefe
        from EMPLEADOS
            where cod_jefe = v_es_jefe;
        if v_jefe > 0 then
            return 1;
            else
            return 0;
        end if;
    end;


    select es_jefe(2)
    from dual;

/*Ejercicio 2*/

select COD_EMP,NOMBRE,APELLIDO1,APELLIDO2,
       case es_jefe(COD_EMP)
        when 1 then 'Si' else 'No'
        end as es_jefe from empleados
        order by 2,3,1;
/*Ejercicio 3*/

/*Ejercicio 4*/

/*Ejercicio 5*/

/*Ejercicio 6*/

/*Ejercicio 7*/

/*Ejercicio 8*/