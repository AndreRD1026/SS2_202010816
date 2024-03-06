USE SS2_Practica1;

SELECT TOP 5
    FECHA.Yearr AS Año,
    COUNT(*) AS Total_de_tsunamis
FROM 
    TSUNAMI
JOIN 
    FECHA ON TSUNAMI.Year_tsunami = FECHA.IdFecha
GROUP BY 
    FECHA.Yearr
ORDER BY 
    Total_de_tsunamis DESC;