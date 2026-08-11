-- Esta seed fue creada el 2026/08/15 a las 21:00 por el desarrollador principal del proyecto, con el fin de actualizar la base de datos con información para pruebas y desarrollo.

-- Agosto 01
INSERT INTO carrera(fecha,tipo,estado,motivo) 
VALUES (
	'2026-08-01',
    'Ida',
    'Cancelada',
    'Mi papá me llevó al trabajo'
);

-- Agosto 03

INSERT INTO carrera(fecha,tipo,estado) 
VALUES (
	'2026-08-03',
    'Ida',
    'Realizada'
);

INSERT INTO carrera(fecha,tipo,estado) 
VALUES (
	'2026-08-03',
    'Vuelta',
    'Realizada'
);

-- Agosto 04

INSERT INTO carrera(fecha,tipo,estado) 
VALUES (
	'2026-08-04',
    'Ida',
    'Realizada'
);

INSERT INTO carrera(fecha,tipo,estado) 
VALUES (
	'2026-08-04',
    'Vuelta',
    'Realizada'
);

-- Agosto 05

INSERT INTO carrera(fecha,tipo,estado,motivo) 
VALUES (
	'2026-08-05',
    'Ida',
    'Cancelada',
    'Mi papá me llevó al trabajo'
);

INSERT INTO carrera(fecha,tipo,estado) 
VALUES (
	'2026-08-05',
    'Vuelta',
    'Realizada'
);

-- Agosto 06

INSERT INTO carrera(fecha,tipo,estado) 
VALUES (
	'2026-08-06',
    'Ida',
    'Realizada'
);

INSERT INTO carrera(fecha,tipo,estado) 
VALUES (
	'2026-08-06',
    'Vuelta',
    'Realizada'
);

-- Agosto 07

INSERT INTO carrera(fecha,tipo,estado,motivo) 
VALUES (
	'2026-08-07',
    'Ida',
    'No planeada',
    'No fui convocado a trabajar'
);

INSERT INTO carrera(fecha,tipo,estado,motivo) 
VALUES (
	'2026-08-07',
    'Vuelta',
    'No planeada',
    'No fui convocado a trabajar'
);

INSERT INTO carrera(fecha,tipo,estado, mes, numero_quincena) 
VALUES (
	'2026-08-08',
    'Ida',
    'Realizada',
    "Agosto",
    "1"
);

INSERT INTO carrera(fecha,tipo,estado, mes, numero_quincena) 
VALUES (
	'2026-08-08',
    'Vuelta',
    'Realizada',
    "Agosto",
    "1"
);

INSERT INTO carrera(fecha,tipo,estado, mes, numero_quincena) 
VALUES (
	'2026-08-10',
    'Ida',
    'Realizada',
    "Agosto",
    "1"
);

INSERT INTO carrera(fecha,tipo,estado, mes, numero_quincena) 
VALUES (
	'2026-08-10',
    'Vuelta',
    'Realizada',
    "Agosto",
    "1"
);


-- Quitamos por un momento la seguridad de las actualizaciones para poder actualizar los datos de la tabla carrera
SET SQL_SAFE_UPDATES = 0;

-- Actualizamos los datos en común que hacían falta en la tabla carrera, como el mes y el número de quincena (Ciclo) para poder calcular la cuenta de la quincena 1 o 2
UPDATE carrera SET numero_quincena = "1";
UPDATE carrera SET mes = "Agosto";

