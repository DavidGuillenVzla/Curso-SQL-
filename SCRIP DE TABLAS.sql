//** create table Perros(
	ID_PERROS INT (10) NOT NULL AUTO_INCREMENT PRIMARY KEY
    NOMBRE_PERRO VARCHAR(40)
    EDAD_PERRO INT(2),
    SEXO_PERRO VARCHAR(2),
    CASTRADO INT(2),
    RAZA VARCHAR(30)
    
    );
          
    CREATE TABLE Paseador (
    	ID_PASEADOR INT (10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        NOMBRE_PASEADOR VARCHAR (50),
        DNI_PASEADOR INT (11),
        DIRECCION_PASEADOR VARCHAR (50),
        HORARIOS_PASEADOR INT (5),
        EDAD_PASEADOR INT(2)
);
   
         CREATE TABLE DIRECCION (
			CALLE VARCHAR (50),
			ALTURA INT (5),
            ZONA VARCHAR(50),
            CASA INT (1),
            DEPARTAMENTO INT (1),
            ID_CLIENTE INT(10) 
            
            ); 
            								
    -- Creacion de llave foranea que apunta a la tabla cliente
    ALTER TABLE DIRECCION ADD CONSTRAINT FK1_direccion FOREIGN KEY (id_cliente)
        REFERENCES cliente (id_cliente);
      
      
        CREATE TABLE coach (
    	ID_COACH INT (10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        NOMBRE_COACH VARCHAR (50),
        DNI_COACH INT (11),
        DIRECCION_COACH VARCHAR (50),
        HORARIOS_COACH INT (5),
        EDAD_COACH INT(2)
);

 
 create table perros (
	ID_PERRO INT (10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NOMBRE_PERRO VARCHAR (30),
    EDAD_PERRO INT (2),
    SEXO_PERRO INT(1),
    CASTRADO INT (1),
    RAZA VARCHAR (30),
    ID_CLIENTE INT(10),
    ID_COACH INT(10),
    ID_PASEADOR INT(10)
    );

 -- Creacion de llave foranea 
    ALTER TABLE perros ADD CONSTRAINT FK1_paseador FOREIGN KEY (ID_PASEADOR)
        REFERENCES paseador (ID_PASEADOR);
        
        **//
       