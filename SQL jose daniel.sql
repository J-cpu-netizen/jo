create database datosdicapacidad1;
USE datosdiscapacidad;
create table personas(
departamento int primary key,
municipio varchar(45) not null,
genero varchar(45) not null,
edad varchar(45) not null,
cursovida varchar(45) not null,
email varchar(45) not null,
participa varchar(45) not null );
create table diagnostico(
diagnostico_id int primary key,
descripcion varchar(45) not null,
participa varchar (45) not null );
 create table codigo_diagnostico(       
 codigo_id int not null primary key,
 codigo varchar (45) not null);
 create table personas_diagnosticos(
persona_id int not null primary key,
diagnostico_id varchar (45) not null,
codigo_id varchar (45) not null,
modalidad_id varchar (45) not null,
discapacidad_id varchar (45) not null,
participa varchar (45) not null );
create table  modalidades(
modalidad_id int not null primary key,
modalidad varchar(45) not null);
 create table  discapacidades(
 discapacidad_id int not null primary key,
 categoria varchar(45) not null);
create table enfoque_diferencial(
enfoque_id int not null primary key,
enfoque varchar(45) not null);
Load data local infile '"C:\Users\ESTUDIANTE\Downloads\personas.csv"'
into table personas
fields terminated by''
enclosed by""
lines terminated by '\r\n'  
ignore 1 lines
(Personas,departamento,municipio,genero,edad,curso_de_vida);    

/*----CORRIGIENDO EL TIPO DE DATO DE LA PRIMARY KEY"---*/
/*1- Borramos los datos existentes en la tabla*/
delete from codigo_diagnostico; /*para ejecutar sedesactivo el UPDATE y DELETE seguros*/
/*cambiamos el tipo de dato*/
alter table codigo_diagnostico
modify codigo_id VARCHAR(45) PRIMARY KEY;
/*-----FIN DE LA CORECCIÓN----*/

/*---CARGA DE LOS DATOSDESDE LOS ARCHIVOS .CSV---*/
LOAD DATA LOCAL INFILE 'C:\\Users\\ESTUDIANTE\\Downloads\\codigo diagnostico.csv'
   INTO TABLE codigo_diagnostico
   FIELDS TERMINATED BY ';'
   ENCLOSED BY '"'
   LINES TERMINATED BY '\r\n'
   IGNORE 1 lines 
   (codigo_id, codigo);
   LOAD DATA LOCAL INFILE 'C:\\Users\\ESTUDIANTE\\Downloads\\diagnostico.csv'
   INTO TABLE diagnostico
   FIELDS TERMINATED BY ';'
   ENCLOSED BY '"'
   LINES TERMINATED BY '\r\n'
   IGNORE 1 lines 
   (diagnostico_id, descripcion);
    LOAD DATA LOCAL INFILE 'C:\\Users\\ESTUDIANTE\\Downloads\\persona_dignosticos.csv'
   INTO TABLE personas_diagnosticos
   FIELDS TERMINATED BY ';'
   ENCLOSED BY '"'
   LINES TERMINATED BY '\r\n'
   IGNORE 1 lines 
   (persona_id,diagnostico_id,codigo_id,modalidad_id, discapacidad_id, participa);
    