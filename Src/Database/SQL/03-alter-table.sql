-- Agregamos un mes para poder rastrear las carreras realizadas en un tiempo estimado
ALTER TABLE carrera ADD COLUMN mes VARCHAR(20) NOT NULL;

-- Agregamos el número de quincena (Ciclo) para poder cálcular la cuenta de la quincena 1 o 2
ALTER TABLE carrera ADD COLUMN numero_quincena VARCHAR(2) NOT NULL;