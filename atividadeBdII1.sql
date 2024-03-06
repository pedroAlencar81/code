/*Criar a Base de Dados:*/
CREATE DATABASE empresa;
USE empresa;

/*Criar Tabelas e Adicionar Atributos:*/
CREATE TABLE departamento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE funcionario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES departamento(id)
);

/*Inserir Dados nas Tabelas:*/
INSERT INTO departamento (nome) VALUES
('TI'),
('RH'),
('Financeiro');

INSERT INTO funcionario (nome, cargo, departamento_id) VALUES
('João', 'Desenvolvedor', 1),
('Maria', 'Analista de RH', 2),
('Carlos', 'Contador', 3);

/*Consultas com Joins:*/

SELECT f.nome AS funcionario, f.cargo, d.nome AS departamento
FROM funcionario f
JOIN departamento d ON f.departamento_id = d.id;
