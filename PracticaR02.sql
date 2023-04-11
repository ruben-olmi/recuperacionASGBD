/*1º Ejercicio*/
create table partidos_empatados(
  id_equipo_casa  number(2),
  id_equipo_fuera number(2),
  fecha timestamp,
  primary key (id_equipo_casa,id_equipo_fuera)
);

/*2º Ejercicio*/
declare
    v1 PARTIDOS.GOLES_CASA%type;
    v2 PARTIDOS.GOLES_FUERA%type;
begin
    select GOLES_CASA,GOLES_FUERA into v1,v2
    from partidos
    where GOLES_CASA=GOLES_FUERA;
    dbms_output.put_line(v1||' '||v2);
end;
select * from user_tables;