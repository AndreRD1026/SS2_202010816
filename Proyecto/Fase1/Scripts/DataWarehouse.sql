/* DataWarehouse en SQL Server */

CREATE DATABASE seminario2_202010816;

USE seminario2_202010816;

CREATE TABLE Proveedor (
	IdProveedor int IDENTITY(1,1) PRIMARY KEY,
	CodProveedor varchar(50),
	NombreProveedor varchar(100),
	DireccionProveedor varchar(200),
	NumeroProveedor int,
	WebProveedor varchar(50)
);

CREATE TABLE Producto (
	IdProducto int IDENTITY(1,1) PRIMARY KEY,
	CodProducto varchar(50),
	NombreProducto varchar(100),
	MarcaProducto varchar(50)
);

CREATE TABLE Categoria (
	IdCategoria int IDENTITY(1,1) PRIMARY KEY,
	NombreCategoria varchar(50)
);

CREATE TABLE Sucursal (
	IdSucursal int IDENTITY(1,1) PRIMARY KEY,
	CodSucursal varchar(50),
	NombreSucursal varchar(100),
	DireccionSucursal varchar(200)
);

CREATE TABLE Geografia (
	IdRegion int IDENTITY(1,1) PRIMARY KEY,
	Region varchar(50)
);

CREATE TABLE Departamento (
	IdDepartamento int IDENTITY(1,1) PRIMARY KEY,
	NombreDeparamento varchar(50)
);

CREATE TABLE Cliente (
	IdCliente  int IDENTITY(1,1) PRIMARY KEY,
	CodigoCliente varchar(50),
	NombreCliente varchar(100),
	TipoCliente varchar(50),
	DireccionCliente varchar(200),
 	NumeroCliente int
);

CREATE TABLE Vendedor (
	IdVendedor int IDENTITY(1,1) PRIMARY KEY,
	CodVendedor varchar(50),
	NombreVendedor varchar(100),
	Vacacionista varchar(50)
);

CREATE TABLE Compra (
	IdCompra int IDENTITY(1,1) PRIMARY KEY,
	Id_Proveedor int,
	Id_Producto int, 
	Id_Categoria int,
	Id_Sucursal int,
	Id_Region int,
	Id_Departamento int,
	Fecha Date, 
	Unidades int,
	CostoU decimal (10,2)

	FOREIGN KEY (Id_Proveedor) REFERENCES Proveedor (IdProveedor),
	FOREIGN KEY (Id_Producto) REFERENCES Producto (IdProducto),
	FOREIGN KEY (Id_Categoria) REFERENCES Categoria (IdCategoria),
	FOREIGN KEY (Id_Sucursal) REFERENCES Sucursal (IdSucursal),
	FOREIGN KEY (Id_Region) REFERENCES Geografia (IdRegion),
	FOREIGN KEY (Id_Departamento) REFERENCES Departamento (IdDepartamento)
);

CREATE TABLE Venta (
	IdVenta int IDENTITY(1,1) PRIMARY KEY,
	Id_Cliente int,
	Id_Vendedor int,
	Id_Producto int,
	Id_Categoria int,
	Id_Sucursal int,
	Id_Region int,
	Id_Departamento int,
	Fecha Date, 
	Unidades int,
	PrecioUnitario decimal,

	FOREIGN KEY (Id_Cliente) REFERENCES Cliente (IdCliente),
	FOREIGN KEY (Id_Vendedor) REFERENCES Vendedor (IdVendedor),
	FOREIGN KEY (Id_Producto) REFERENCES Producto (IdProducto),
	FOREIGN KEY (Id_Categoria) REFERENCES Categoria (IdCategoria),
	FOREIGN KEY (Id_Sucursal) REFERENCES Sucursal (IdSucursal),
	FOREIGN KEY (Id_Region) REFERENCES Geografia (IdRegion),
	FOREIGN KEY (Id_Departamento) REFERENCES Departamento (IdDepartamento)
);
