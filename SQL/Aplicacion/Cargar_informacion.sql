USE SS2_Practica1;

INSERT INTO PAIS(nombre_pais)
(SELECT DISTINCT TEMPORAL.Country
	FROM TEMPORAL
);

SELECT * FROM PAIS;

INSERT INTO FECHA(Yearr)
( SELECT DISTINCT TEMPORAL.Yearr
	FROM TEMPORAL
);

INSERT INTO LOCACION(nombre_locacion)
( SELECT DISTINCT TEMPORAL.Location_name
	FROM TEMPORAL
);

INSERT INTO CAUSA(codigo_causa)
(SELECT DISTINCT TEMPORAL.Tsunami_cause_code
	FROM TEMPORAL
);

SELECT * FROM CAUSA;

INSERT INTO TSUNAMI (
	Earthquake_magnitude,
	Maximum_water_height,
	Total_deaths ,
	Total_damage ,
	Total_houses_destroyed ,
	Total_houses_damaged ,
	Id_pais,
	Id_locacion,
	Year_tsunami,
	Id_causa)
	( SELECT TEMPORAL.Earthquake_magnitude, TEMPORAL.Maximum_water_height, TEMPORAL.Total_deaths, TEMPORAL.Total_damage, TEMPORAL.Total_houses_destroyed, 
	TEMPORAL.Total_houses_damaged,
	(SELECT TOP 1 IdPais FROM PAIS WHERE TEMPORAL.Country = PAIS.nombre_pais),
	(SELECT TOP 1 IdLocacion FROM LOCACION WHERE TEMPORAL.Location_name = LOCACION.nombre_locacion),
	(SELECT TOP 1 IdFecha FROM FECHA WHERE TEMPORAL.Yearr = FECHA.Yearr),
	(SELECT TOP 1 IdCausa FROM CAUSA WHERE TEMPORAL.Tsunami_cause_code = CAUSA.codigo_causa)
	FROM TEMPORAL
	);
