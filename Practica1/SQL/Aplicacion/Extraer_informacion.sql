USE SS2_Practica1;

BULK INSERT 
		TEMPORAL
FROM 
	'C:\Users\Andre\Desktop\U\SEMI 2\Practica1\historial_tsumamis.csv'
WITH(
	FIELDTERMINATOR = ';',
	ROWTERMINATOR = '\n',
	FIRSTROW = 2
);