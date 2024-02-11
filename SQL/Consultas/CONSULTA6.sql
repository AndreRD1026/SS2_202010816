USE SS2_Practica1;

SELECT TOP 5
    FECHA.Yearr AS Año,
    SUM(TSUNAMI.Total_deaths) AS Total_muertes
FROM 
    TSUNAMI
JOIN 
    FECHA ON TSUNAMI.Year_tsunami = FECHA.IdFecha
GROUP BY 
    FECHA.Yearr
ORDER BY 
    Total_muertes DESC;
