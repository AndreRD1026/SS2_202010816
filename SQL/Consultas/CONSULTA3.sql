USE SS2_Practica1;

SELECT 
    nombre_pais AS Pais,
    COALESCE([1], '') AS Anio_1,
    COALESCE([2], '') AS Anio_2,
    COALESCE([3], '') AS Anio_3,
    COALESCE([4], '') AS Anio_4,
    COALESCE([5], '') AS Anio_5
FROM 
    (
        SELECT 
            PAIS.nombre_pais,
            FECHA.Yearr AS Anio,
            ROW_NUMBER() OVER(PARTITION BY PAIS.IdPais ORDER BY FECHA.Yearr) AS RowNumber
        FROM 
            TSUNAMI
        JOIN 
            PAIS ON TSUNAMI.Id_pais = PAIS.IdPais
        JOIN 
            FECHA ON TSUNAMI.Year_tsunami = FECHA.IdFecha
    ) AS TsunamisPorPais
PIVOT 
    (
        MAX(Anio) FOR RowNumber IN ([1], [2], [3], [4], [5])
    ) AS PivotTable;
