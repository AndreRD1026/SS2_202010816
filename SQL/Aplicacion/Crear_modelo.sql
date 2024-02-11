USE SS2_Practica1;

CREATE TABLE TEMPORAL(
	Yearr varchar(10),
	Mo varchar(10),
	Dy varchar(10),
	Hr varchar(10),
	Mn varchar(10),
	Sec varchar(10),
	Tsunami_event_code varchar (10),
	Tsunami_cause_code varchar(10),
	Earthquake_magnitude varchar(10),
	Deposits varchar(10),
	Latitude varchar (10),
	Longitude varchar (10),
	Maximum_water_height varchar (10),
	Number_of_runups varchar (10),
	Tsunami_magnitude varchar (10),
	Tsunami_intensity varchar (10),
	Total_deaths varchar (10),
	Total_missing varchar (10),
	Total_missing_desc varchar (10),
	Total_injuries varchar (10),
	Total_damage varchar (10),
	Total_damage_desc varchar (10),
	Total_houses_destroyed varchar (10),
	Total_houses_damaged varchar (10),
	Country varchar (100),
	Location_name varchar (100)
);

CREATE TABLE PAIS (
	IdPais int IDENTITY(1,1) PRIMARY KEY,
	nombre_pais varchar (100),
);

CREATE TABLE FECHA (
	IdFecha int IDENTITY(1,1) PRIMARY KEY,
	Yearr int
);

CREATE TABLE LOCACION (
	IdLocacion int IDENTITY(1,1) PRIMARY KEY,
	nombre_locacion varchar (100)
);

CREATE TABLE CAUSA (
	IdCausa int IDENTITY(1,1) PRIMARY KEY,
	codigo_causa int
);

CREATE TABLE TSUNAMI (
	Id_tsunami int IDENTITY(1,1) PRIMARY KEY,
	Id_pais int,
	Id_locacion int,
	Year_tsunami int,
	Id_causa int,
	Earthquake_magnitude float,
	Maximum_water_height float,
	Total_deaths int,
	Total_damage float,
	Total_houses_destroyed int,
	Total_houses_damaged int,
	FOREIGN KEY (Id_pais) REFERENCES PAIS (IdPais),
	FOREIGN KEY (Id_locacion) REFERENCES LOCACION (IdLocacion),
	FOREIGN KEY ( Year_tsunami) REFERENCES FECHA (IdFecha),
	FOREIGN KEY (Id_causa) REFERENCES CAUSA (IdCausa)
);
