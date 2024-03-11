## Proyecto Fase 1

## Laboratorio Seminario de sistemas 2

## Nombre del proyecto : SGFOOD

## Indice

## Tabla de Contenido

### [1. Requisitos del Sistema](#requisitos-del-sistema)

### [2. Fases del proceso ETL](#fases-del-proceso-etl)

### [3. Modelo DataWarehouse](#modelo-datawarehouse)

## Requisitos del Sistema

<table align="center">
   <tr>
      <th align="center">
         <sup><sub>:warning: WARNING :warning:</sub></sup>
      </th>
   </tr>
   <tr>
      <td align="center">
      
      Estas son las versiones especificas utilizadas para el desarrollo de este proyecto.
   </tr>
   </table>

   |OS|Windows 10|
|:---:|:---:|
|Máquina|Hp ProBook|
|Espacio en Disco | Dependiendo de las extensiones de Visual Studio y la instalación de lo demás | 
|Ram| 8GB |
|SQL Server 2022 Express |[SQL Server](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)|
|Visual Studio 2019|[Visual Studio](https://github.com/FelixKratz/SketchyBar)|
|MySQL 8.0.36|[MySQL](https://dev.mysql.com/downloads/mysql/)|
|Conector Net Mysql|[Net Conector](https://dev.mysql.com/downloads/connector/net/)|


## Fases del proceso ETL

## Modelo DataWarehouse

El modelo que más ajuste tiene a las necesidades del proyecto es: 

![Modelo](IMG/ModeloDataWarehouse.png)

 Este modelo es uno de constelación, debido que la necesidad del proyecto salen dos tablas de hechos, una para compras y otra para ventas, así como en la variedad de dimensiones que pueden estar relacionadas con ambas tablas o ser específicas de una sola. Esta estructura permite agregar fácilmente nuevas fuentes de datos y mantener relaciones complejas entre dimensiones y tablas de hechos. Además, el modelo constelación facilita la optimización de consultas, la escalabilidad del sistema y el mantenimiento a largo plazo.