USE SS2_Practica1;

SELECT TOP 5
    PAIS.nombre_pais AS Pais,
    SUM(TSUNAMI.Total_houses_destroyed) AS Total_casas_destruidas
FROM 
    TSUNAMI
JOIN 
    PAIS ON TSUNAMI.Id_pais = PAIS.IdPais
GROUP BY 
    PAIS.nombre_pais
ORDER BY 
    Total_casas_destruidas DESC;