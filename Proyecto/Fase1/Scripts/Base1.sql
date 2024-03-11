/* Base de datos para los archivos 01 de SGFood en MySQL */

CREATE SCHEMA bd_entrada1 DEFAULT CHARACTER SET utf8;

USE bd_entrada1;

CREATE TABLE Temporal_Compra (
	Fecha varchar(20),
	CodProveedor varchar(25),
	NombreProveedor varchar(100),
	DireccionProveedor varchar(200),
	NumeroProveedor varchar(10),
	WebProveedor varchar(100),
	CodProducto varchar(25),
	NombreProducto varchar(100),
	MarcaProducto varchar(50),
	Categoria varchar(30),
	SodSuSursal varchar(25),
	NombreSucursal varchar(100),
	DireccionSucursal varchar(200),
	Region varchar(30),
	Departamento varchar(30),
	Unidades varchar(20),
	CostoU varchar(20)
);

CREATE TABLE Temporal_Venta (
	Fecha varchar(20),
	CodigoCliente varchar(25),
	NombreCliente varchar(100),
	TipoCliente varchar(30),
	DireccionCliente varchar(200),
	NumeroCliente varchar(10),
	CodVendedor varchar(25),
	NombreVendedor varchar(100),
	Vacacionista varchar(50),
	CodProducto varchar(25),
	NombreProducto varchar(100),
	MarcaProducto varchar(50),
	Categoria varchar(50),
	SodSuSursal varchar(25),
	NombreSucursal varchar(100),
	DireccionSucursal varchar(200),
	Region varchar(30),
	Departamento varchar(20),
	Unidades varchar(20),
	PrecioUnitario varchar(20)
);
