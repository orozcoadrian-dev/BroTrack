CREATE TABLE carrera(
    -- Identificador de esta tabla
	id_carrera INT PRIMARY KEY AUTO_INCREMENT,
    
    -- Datos de información importantes que son necesarios
    fecha DATE NOT NULL,
    tipo VARCHAR(10) NOT NULL,
    estado VARCHAR(30) NOT NULL,
    precio DOUBLE DEFAULT(0) NULL
    
    -- Estos datos son opcionales por si estado carrera fue marcado como fallado
	motivo VARCHAR(600) NULL
);