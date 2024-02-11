USE SS2_Practica1;

SELECT 
    PAIS.nombre_pais AS Pais,
    AVG(TSUNAMI.Total_damage) AS Promedio_Total_Damage
FROM 
    TSUNAMI
JOIN 
    PAIS ON TSUNAMI.Id_pais = PAIS.IdPais
GROUP BY 
    PAIS.nombre_pais
ORDER BY 
    Promedio_Total_Damage DESC;
