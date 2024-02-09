/*De acordo com os comandos aprendidos, programe códigos SQL para criar um banco de dados
chamado ESCOLA e deixe-o pronto para o uso. Depois, pesquise qual é o comando utilizado
para inserir uma tabela no banco de dados e siga as instruções:*/
CREATE DATABASE ESCOLA;
USE ESCOLA;

--1. crie uma tabela chamada ALUNO;
CREATE TABLE ALUNO(

--2. defina os atributos da tabela;
--3. adicione a chave primária de nome ID (identificador);
matricula INT auto_increment PRIMARY KEY,

--4. adicione um atributo nome do tipo varchar;
 nome VARCHAR(120) NOT NULL,

 --5. adicione um atributo e-mail do tipo varchar;
 email VARCHAR(150),

 --6. adicione um atributo endereço do tipo varchar.
 endereco varchar(250),
 );
