create database datosdicapacidad;
USE datosdiscapacidad;
create table personas(
departamento int not null primary key,
municipio varchar(45) not null,
genero varchar(45) not null,
edad varchar(45) not null,
cursovida varchar(45) not null,
email varchar(45) not null,
participa varchar(45) not null );
create table diagnostico(
diagnostico_id int not null primary key,
descriocion varchar(45) not null,188
participa varchar (45) not null );
 create table   codigo_diagnostico(
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
