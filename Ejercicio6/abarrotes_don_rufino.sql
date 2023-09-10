CREATE TABLE clientes (
	nombre VARCHAR(30),
	apellido VARCHAR(30),
	email VARCHAR(50),
	telefono BIGINT,
	direccion VARCHAR(80),
	ciudad VARCHAR(20),
	codigo_postal INT,
	id_clientes SERIAL,
	PRIMARY KEY (id_clientes)
);

CREATE TABLE productos (
	nombre VARCHAR(20) NOT NULL,
	descripcion VARCHAR(30),
	precio MONEY NOT NULL,
	sku VARCHAR(20),
	id_productos SERIAL ,
	PRIMARY KEY (id_productos)
);

CREATE TABLE ventas (
	id_productos INT NOT NULL,
	id_clientes INT NOT NULL,
	descripcion VARCHAR(30),
	cantidad INT,
	id_ventas SERIAL,
	PRIMARY KEY (id_ventas)
);
SELECT * FROM ventas;
DROP TABLE PRODUCTOS;
INSERT INTO clientes (nombre,apellido,email,telefono,direccion,ciudad,codigo_postal)
	VALUES(
	'Silvio',
		'Rodriguez',
		'silvini123@gmail.com',
		3214207777,
		'Cl 163b no 4-39 int 2',
		'Monterrey',
		12345	
	),
	(
	'Lorena',
		'Suarez',
		'pope123@hotmail.com',
		3124969271,
		'Cl 163b no 4-39 int 2',
		'Queretaro',
		92309489
	),
	(
	'Isabella',
		'Rodriguez',
		'isarodri@hotmail.com',
		3245678975,
		'Cr 12 No 67- 96 biota',
		'cancun',
		843758
	),
	(
	'Maria Esther',
		'Chacon Medina',
		'mariaestherchacon@gmail.com',
		3125774697,
		'barrio el Cafetal',
		'Monterrey',
		497860
	),
	(
	'Esteban Juan',
		'Castro Nieves',
		'estebillan@yahoo.es',
		3125874659,
		'Cr 76 No 123-98 el bosque',
		'Mexico D.F',
		497860
	);
	
INSERT INTO productos (nombre,descripcion,precio,sku)
	VALUES(
	'Tornillo',
		'metal calibre 2',
		'14',
		'hh69nfd908jb'
	),
	(
	'Pala',
		'grande',
		'98.9',
		'kdshfj6hjg'
	),
	(
	'serrucho',
		'calibre 2 mango reforzado',
		'134.5',
		'87569dfh5'
	),
	(
	'cemento',
		'50 kg',
		'325.600',
		'jsdhfj23kh8'
	),
	(
	'Destornillador',
		'50 kg',
		'11',
		'jsdhfj23kh8'
	),
	(
	'Cinta',
		'50 kg',
		'9',
		'jsdhfj23fgh98fgh'
	);
	
INSERT INTO ventas (id_productos,id_clientes,descripcion,cantidad)
	VALUES(
		'1',
		'3',
	'Tornillo',
		4
	),
	
	(
		'1',
		'3',
	'Tornillo',
		8
	),
	(
		'1',
		'3',
	'Tornillo',
		17
	),
		(
		'1',
		'2',
	'palas',
		34
	);
	
	
-- ID de los clientes de Monterrey --	
SELECT DISTINCT id_clientes,nombre FROM clientes WHERE ciudad ='Monterrey';

--ID y descripción de los productos que cuesten menos de 15 pesos
SELECT DISTINCT id_productos,descripcion,nombre FROM productos WHERE precio < MONEY(15.00);

--ID y nombre de los clientes, cantidad vendida, y descripción del producto, en las ventas en las cuales se vendieron más de 10 unidades.--
SELECT DISTINCT id_clientes,cantidad,descripcion FROM ventas WHERE cantidad > 10;

--ID y nombre de cada cliente y la suma total (suma de cantidad) de los productos que ha comprado.--
SELECT id_productos, COUNT(*) AS cantidad FROM ventas GROUP BY id_productos;


