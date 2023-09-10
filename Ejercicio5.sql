CREATE TABLE film (
	title VARCHAR(50),
	rating VARCHAR(6),
	cantidad_actores  INT,
	film_id SERIAL,
	PRIMARY KEY (film_id)
);

CREATE TABLE actor (
	nombre VARCHAR(50),
	apellido VARCHAR(50),
	pais VARCHAR(40),
	edad INT,
	id_actor SERIAL,
	PRIMARY KEY (id_actor)
);

CREATE TABLE customer (
	nombre VARCHAR(40),
	id_customer SERIAL,
	PRIMARY KEY (id_customer)
);

CREATE TABLE payment (
	fecha DATE,
	cantidad REAL,
	id_payment SERIAL,
	PRIMARY KEY (id_payment)
);

CREATE TABLE city (
	ciudad VARCHAR(40),
	city_id SERIAL,
	PRIMARY KEY (city_id)
);

CREATE TABLE tienda (
	alquileres VARCHAR(15),
	devoluciones BOOLEAN,
	duraciones INT,
	tienda_id SERIAL,
	PRIMARY KEY (tienda_id)
);

CREATE TABLE clientes (
	nombre VARCHAR(30),
	apellido VARCHAR(30),
	cliente_id SERIAL,
	PRIMARY KEY (cliente_id)
);

INSERT INTO film(title,rating,cantidad_actores) 
	VALUES(
	'El señor de los anillos',
		'PG',
		'14'
	),
	(
	'los pitufos',
		'PG',
		'45'
	),
	(
	'los vengadores',
		'G',
		'23'
	),
		(
		'detras del utimo',
			'PG-13',
			'21'
		),
	(
	'los cazadores',
		'PG-17',
		'34'
	),
	(
	'la verdad en la mentira',
		'G',
		'18'
	),
	(
	'Interestelar',
		'NC-17',
		'67'
	),
	(
	'Toy Story',
		'PG-13',
		'24'
	),
	(
	'Apocalipto',
		'NC-17',
		'20'
	);
	
INSERT INTO actor(nombre,apellido,pais,edad) 
	VALUES(
	'Angela',
		'Robles',
		'Colombia',
		'14'
	),
	(
	'Angelina ',
		'jolie',
		'Norteamericana',
		'34'
	),
	(
	'Audrey',
		'Caro',
		'Mexico',
		'36'
	),
	(
	'Julia',
		'Robles',
		'España',
		'67'
	),
	(
	'Cameron',
		'Torres',
		'Boliviana',
		'45'
	),
	(
	'Cameron',
		'Jimenez',
		'colombia',
		'34'
	),
	(
	'Angelina',
		'Marie',
		'Canada',
		'8'
	),
	(
	'Angela',
		'Moreno',
		'Colombia',
		'41'
	);
	
INSERT INTO customer(nombre) 
	VALUES(
	'Angela robles'
	),
	(
	'Pedro Suaza'
	),
	(
	'Jamie Rice'
	),
	(
	'Silvio Rodriguez'
	),
	(
	'Isabella Suarez'
	),
	(
	'Lorena suarez'
	),
	(
	'Jamie Rice'
	);
	
INSERT INTO payment (fecha,cantidad) 
	VALUES(
	'23-08-2023',
	'12000'
	),
	(
	'24-08-2023',
	'13200'
	),
	(
	'22-08-2023',
	'0.25'
	),
	(
	'21-08-2023',
	'0.75'
	),
	(
	'20-08-2023',
	'1356'
	),
	(
	'23-08-2023',
	'0.9'
	);

INSERT INTO city (ciudad) 
	VALUES(
	'Bogota'
	),
	(
	'Medellin'
	),
	(
	'Cali'
	),
	(
	'Ibague'
	),
	(
	'Sincelejo'
	),
	(
	'Barranquilla'
	),
	(
	'Pereira'
	),
	(
	'Bucaramanga'
	),
	(
	'Melgar'
	),
	(
	'Biota'
	),
	(
	'Chia'
	);
	
INSERT INTO tienda (alquileres,devoluciones,duraciones) 
	VALUES(
	'diario',
	'true',
	'1'
	),
	(
	'semanal',
	'true',
	'3'
	),
	(
	'quincenal',
	'false',
	'5'
	),
	(
	'diario',
	'false',
	'2'
	),
	(
	'semanal',
	'true',
	'4'
	),
	(
	'quincenal',
	'true',
	'12'
	);
	
INSERT INTO clientes (nombre,apellido) 
	VALUES(
	'Silvio',
	'Rodriguez'
	),
	(
	'Lorena',
	'Suarez'
	),
	(
	'Isabella',
	'Rodriguez'
	),
	(
	'carlos',
	'Rojas'
	),
	
	(
	'Esther',
	'Chacon'
	),
	
	(
	'Carol',
	'Jimenez'
	);	

--Selecciona 5 filas de la tabla film, obteniendo todas las columnas.--
SELECT * FROM film LIMIT 5;

--Selecciona filas de la tabla film donde film_id sea menor que 4.--
SELECT * FROM film WHERE film_id < 5;	

--Selecciona filas de la tabla film donde el rating sea PG o G.--
SELECT * FROM film WHERE rating='PG' OR rating='G';

--Selecciona filas de la tabla actor donde el nombre sea Angela, Angelina o Audrey usando IN.--
SELECT * FROM actor WHERE nombre IN('Angela','Angelina','Audrey');

--Obtén una lista de actores con el nombre Julia.--
SELECT * FROM actor WHERE nombre IN('Julia');

--Obtén una lista de actores con los nombres Chris, Cameron o Cuba.--
SELECT * FROM actor WHERE nombre IN('Chris','Cameron','Cuba');

--Selecciona la fila de la tabla customer para el cliente con el nombre Jamie Rice.--
SELECT * FROM customer WHERE nombre like '%Jamie Rice%';

--Selecciona el monto y la fecha de pago de la tabla payment donde el monto pagado sea menor a $1.--
SELECT * FROM payment WHERE cantidad <1;

--¿Cuáles son las diferentes duraciones de alquiler permitidas por la tienda?
SELECT * FROM tienda;

--Ordena las filas en la tabla city por country_id y luego por city.--
SELECT * FROM city ORDER BY city_id ASC;
SELECT * FROM city ORDER BY ciudad ASC;

--¿Cuáles son los ID de los últimos 3 clientes que devolvieron un alquiler?--
SELECT * FROM tienda WHERE devoluciones= 'true' LIMIT 3 ;

--¿Cuántas películas tienen clasificación NC-17? ¿Cuántas tienen clasificación PG o PG-13?--
SELECT rating, COUNT(*) AS cantidad_Peliculas FROM film GROUP BY rating ;

--¿Hay algún cliente con el mismo apellido?
SELECT apellido, COUNT(*) AS apellido_duplicado FROM clientes GROUP BY apellido; 

--Cuenta el número de ciudades para cada country_id en la tabla city. Ordena los resultados por count(*).
SELECT ciudad, COUNT(*) AS cantidad_ciudades FROM city GROUP BY ciudad;