USE SS2_Practica1;

SELECT 
    PAIS.nombre_pais AS Pais,
    AVG(TSUNAMI.Maximum_water_height) AS Promedio_altura_maxima_agua
FROM 
    TSUNAMI
JOIN 
    PAIS ON TSUNAMI.Id_pais = PAIS.IdPais
GROUP BY 
    PAIS.nombre_pais
ORDER BY 
    Promedio_altura_maxima_agua DESC;
