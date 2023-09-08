CREATE TABLE proveedor (
	nombre VARCHAR(50),
	direccion VARCHAR(80),
	ciudad VARCHAR(30),
	provincia  VARCHAR(80),
	id_proveedor SERIAL,
	PRIMARY KEY (id_proveedor)
);

CREATE TABLE proveedor_piezas (
	fecha DATE,
	cantidad INT,
	campo VARCHAR(30),
	codigo_pieza SERIAL,
	PRIMARY KEY (codigo_pieza)
);

CREATE TABLE piezas (
	nombre VARCHAR(40),
	color VARCHAR(20),
	precio INTEGER,
	codigo_piezas SERIAL,
	PRIMARY KEY (codigo_piezas)
);

CREATE TABLE piezas_x_proveedor (
	fecha DATE,
	cantidad INTEGER,
	id_proveedor SERIAL,
	PRIMARY KEY (id_proveedor)
);

CREATE TABLE piezas (
	nombre VARCHAR(40),
	color VARCHAR(20),
	precio INTEGER,
	codigo_piezas SERIAL,
	PRIMARY KEY (codigo_piezas)
);

CREATE TABLE categoria (
	nombre VARCHAR(40),
	codigo_piezas INT,
	FOREIGN KEY (codigo_piezas)
	categoria_id SERIAL
	PRIMARY KEY (codigo_piezas)
);

SELECT * FROM piezas_x_proveedor;

INSERT INTO proveedor(nombre,direccion,ciudad,provincia) 
	VALUES(
	'Silvini',
		'cl 163b no 6-09',
		'Bogota',
		'Cundinamarca'
	)
	
INSERT INTO proveedor_piezas(fecha,cantidad,campo) 
	VALUES(
	'29-09-2023',
		'14',
		'mecanica'
	)
	
INSERT INTO piezas(nombre,color,precio) 
	VALUES(
	'tornillo universal',
		'plata',
		'15200'
	)
	
INSERT INTO piezas_x_proveedor(fecha,cantidad) 
	VALUES(
	'23-06-2022',
		'32'
	)