 													/*----- CREACION BASE----*/                 
	CREATE SCHEMA paseos_app;
		USE  paseos_app;
												/*-----CREACION TABLA CLIENTE----*/
   												
CREATE TABLE cliente (
	ID_CLIENTE int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	NOMBRE_CLIENTE varchar(40)  NOT NULL,
	DNI_CLIENTE int(11) NOT NULL,
	DIRECCION_CLIENTE varchar(50)  NULL,
	HORARIOS_CLIENTE int(4)  NULL,
	EDAD_CLIENTE int(2)  NULL
  )
  ;
   												/*-----CREACION TABLA COACH----*/
CREATE TABLE coach  (
	ID_COACH int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	NOMBRE_COACH varchar(50)  NOT NULL,
	DNI_COACH int(11)  NOT NULL,
	DIRECCION_COACH varchar(50)  NULL,
	HORARIOS_COACH int(4)  NULL,
	EDAD_COACH int(2)  NULL
)
;
    												/*-----CREACION TABLA PASEADOR----*/
  CREATE TABLE Paseador (
   	ID_PASEADOR INT (10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NOMBRE_PASEADOR VARCHAR (50),
    DNI_PASEADOR INT (11),
    DIRECCION_PASEADOR VARCHAR (50),
    HORARIOS_PASEADOR INT (5),
    EDAD_PASEADOR INT(2)
)
;
									              /*----- CREACION TABLA PERROS----*/

CREATE TABLE perros (
	ID_PERRO int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	NOMBRE_PERRO varchar(30) NOT NULL,
	EDAD_PERRO int (2) NOT NULL,
	SEXO_PERRO VARCHAR(2)  NOT NULL,
	CASTRADO int(2) NOT  NULL,
	RAZA varchar(30)  NULL,
	ID_CLIENTE INT  NULL,
	ID_COACH INT  NULL,
	ID_PASEADOR INT  NULL
)
;	
 											

		 												/*-----CREACION LLAVE FORANEAS----*/
														
 ALTER TABLE perros ADD CONSTRAINT FK1_paseador FOREIGN KEY (ID_PASEADOR)
        REFERENCES paseador (ID_PASEADOR);
ALTER TABLE perros ADD CONSTRAINT FK1_coach FOREIGN KEY (ID_COACH)
        REFERENCES coach (ID_COACH);
ALTER TABLE perros ADD CONSTRAINT FK1_cliente FOREIGN KEY (ID_CLIENTE)
        REFERENCES cliente (ID_CLIENTE);
        
     
									
										
  												/*-----INSERT ----*/
  
												
insert into cliente (NOMBRE_CLIENTE,DNI_CLIENTE,DIRECCION_CLIENTE,HORARIOS_CLIENTE,EDAD_CLIENTE)
	values 
		('David Guillen','95564213',' ','9','28'),
		('Mariana Bonilla','32964933','Venezuela 7100','9','20'),
		('Daniel Rueda','36944511',' Colombia 2100','9','24'),
		('Pepito Perez','94234913','Thames 2300','9','35'),
		('Juan  Rodriguez','94224113','Peru 3300','20','25'),
		('Frank Sinatra','34224923','Freud 7600','7','45'),
		('Ruben Blades','34234813','Thames 4300','9','35'),
		('Cristiano Ronaldo ','94334713','San Martin 8562','9','35'),
		('Mateo Maradona','34434963','Lionel Messi 8632','9','35'),
		('Hernesto Primero','94564213','Pamplona 4657','9','35')
 ;
 
  												/*-----INSERT COACH----*/
 
 insert into coach (NOMBRE_COACH,DNI_COACH,DIRECCION_COACH,HORARIOS_COACH,EDAD_COACH)
	values 
		('Carlos Rodriguez','95564213','Peru 1657','9','32'),
		('Marcos Alvarez','34664213','Hawai 8657','9','25'),
		('Patricio Urquiza','34564222','Paraguay 8645','9','45'),
		('Juan Alvarez','921634212','Mexico 3856','9','21'),
		('Lucia Castro','98764223','America 9857','9','27'),
		('Maria Rodriguez','95764275','India 5757','9','26'),
		('Rosa Castillo','98464216','Venezuela 4657','9','22'),
		('Marisa Costa','34464297','Roma 8757','9','25'),
		('Iara  Paiz','34864227','España 4657','9','30'),
		('Cynthia Garcia','95544212','Cataluña 4657','9','32')
 ;

 
   												/*-----INSERT PASEADOR----*/
 insert into paseador (ID_PASEADOR,NOMBRE_PASEADOR,DIRECCION_PASEADOR,DNI_PASEADOR,HORARIOS_PASEADOR,EDAD_PASEADOR)
values 
		(1,'Marcos Alvarez','Hawai 8657','34664213','09','25'),
		(2,'Marcos Gutierrez','Paris 8657','34664213','09','25'),
		(3,'Patricio Brow','Venezuela 8645','34564222','09','45'),
		(4,'Juan Hamilton','Mexico 3856','921634212','09','21'),
		(5,'Lucia Perez','Messi 9857','98764223','09','27'),
		(6,'Carlos Rodriguez','Indonesia 5757','95764275','09','26'),
		(7,'Manuel Castillo','Venezuela 4657','98464216','09','22'),
		(8,'Veruska Costa','Roma 8757','34464297','09','25'),
		(9,'Vanessa  Contrera','España 4657','34864227','09','30'),
		(10,'Manuel Garcia','Cataluña 4657','95544212','09','32')
;
insert into perros (NOMBRE_PERRO,EDAD_PERRO,SEXO_PERRO,CASTRADO,RAZA,ID_CLIENTE,ID_COACH,ID_PASEADOR)
	values 
		('Mecha',2,'F',1,'Border Collie',1,6,1),
		('Lima',1,'F',1,'Mestizo',2,1,1),
		('Gemma',3,'F',0,'Mestizo',3,2,3),
		('Jack',4,'M',1,'Chow Chow',4,6,4),
		('Kurt',1,'M',1,'Boston Terrier',5,3,4),
		('Choco',1,'M',1,'Boxer',3,4,5),
		('Aguacate',3,'M',1,'Bull Terrier',6,7,7),
		('Rita',3,'F',1,'Breton',8,8,8)
	;
    									              /*----- CREACION TABLA PERROS ASIGNADOS POR COACH----*/
        Create table Perros_asignados_coach as (
select
						C.ID_COACH as ID,
						C.NOMBRE_COACH as NOMBRE, 
						P.NOMBRE_PERRO,
                        p.ID_PERRO 
                    FROM perros P
                    left join coach C 
                    on  P.ID_COACH= C.ID_COACH
                    order by P.ID_COACH
);
   												/*-----CREACION DE VISTAS----*/

-- 1) Vista cantidad perror por sexo
 
		CREATE VIEW vw_cantidad_perro_sexos AS
			SELECT SEXO_PERRO,  count(SEXO_PERRO) AS 'TOTAL'
				FROM perros
				GROUP  BY  SEXO_PERRO
                ;        
               
-- 2)Vista para saber cuantos perros hembras están castrados y cuantos machos.
	CREATE VIEW vw_castrados_perros AS
			select SEXO_PERRO AS SEXO, count(CASTRADO) as 'Total castrado'
            from perros
            group by SEXO_PERRO
            ;

-- 3) vista para saber  cual es el perro más viejo.        
            	create view vw_edad_perros_viejos AS
					select ID_PERRO AS ID,NOMBRE_PERRO AS NOMBRE,EDAD_PERRO as Edad 
                    from perros
                    order by EDAD_PERRO desc;
                    
-- 4) Vista para ver el coach con más perros asignados.                    
	CREATE	VIEW VW_PERROS_COACH AS
		select 
				c.ID_COACH,
				c.NOMBRE_COACH,
			count(*) AS PERROS_ASIGNADOS			
		from perros p
		left join coach c
		on c.id_coach=p.id_coach
		group by c.id_coach
    ;
-- 5) Vista para ver el paseador con más perros asignados
						CREATE	VIEW VW_PERROS_PASEADOR AS
		select 
				c.ID_PASEADOR,
				c.NOMBRE_PASEADOR,
			count(*) AS PERROS_ASIGNADOS			
		from perros p
		left join paseador c
		on c.id_paseador=p.id_paseador
		group by c.id_paseador
    ;
											/*-----CREACION DE FUNCIONES----*/

-- 1) OBTENER NOMBRE DEL CLIENTE POR ID
DELIMITER $$
CREATE FUNCTION Nombre_clientes_id (id_funcion_clientes INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
	DECLARE id_clientes VARCHAR(100);
		select NOMBRE_CLIENTE into id_clientes from cliente
		where ID_CLIENTE= id_funcion_clientes;
  RETURN id_clientes;
END
$$ ;








												/*-----CREACION DE FUNCIONES----*/
DELIMITER $$
CREATE PROCEDURE sp_obtener_nombres_perros (in id_perros_procedure INT)
BEGIN
	select * from perros
    where ID_PERRO= id_perros_procedure;
	END
$$ ;

CALL sp_obtener_nombres_perros(10);
select * from perros

											/*  Store procedure con condicionales    */
DELIMITER $$
CREATE PROCEDURE sp_query_condicion (IN condicion INT)
BEGIN
	IF condicion= 1 THEN
		SELECT * FROM cliente;
	ELSE
		SELECT * FROM perros;
        END IF;
END
$$ ;


CALL sp_query_condicion(1)


DELIMITER $$
CREATE PROCEDURE sp_get_names_order (IN field CHAR(20) )
BEGIN
	DECLARE game_order VARCHAR(100) ; -- ORDER BY name
	IF field <> '' THEN
		SET game_order = CONCAT(' ORDER BY ', field);
  END IF;
  SELECT game_order;
END
$$ ;
