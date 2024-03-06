USE SS2_Practica1;

SELECT TOP 5
    PAIS.nombre_pais AS Pais,
    SUM(TSUNAMI.Total_deaths) AS Total_muertes
FROM 
    TSUNAMI
JOIN 
    PAIS ON TSUNAMI.Id_pais = PAIS.IdPais
GROUP BY 
    PAIS.nombre_pais
ORDER BY 
    Total_muertes DESC;