USE SS2_Practica1;

SELECT
    FECHA.Yearr AS Year_tsunami,
    COUNT(*) AS Cantidad_de_tsunamis
FROM TSUNAMI
JOIN FECHA ON TSUNAMI.Year_tsunami = FECHA.IdFecha
GROUP BY FECHA.Yearr
ORDER BY FECHA.Yearr ASC;

