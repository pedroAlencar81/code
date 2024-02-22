/*Criar o Banco de Dados e Tabelas:*/
CREATE DATABASE IF NOT EXISTS escola;
USE escola;

CREATE TABLE aluno (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    turma VARCHAR(10) NOT NULL
);

CREATE TABLE historico_notas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT NOT NULL,
    disciplina VARCHAR(100) NOT NULL,
    nota FLOAT NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES aluno(id)
);

/*Adicionar Dados nas Tabelas:*/
INSERT INTO aluno (nome, idade, turma) VALUES
('João', 15, 'A'),
('Maria', 16, 'B'),
('Carlos', 14, 'A');

INSERT INTO historico_notas (aluno_id, disciplina, nota) VALUES
(1, 'Matemática', 8.5),
(1, 'Português', 9),
(2, 'Matemática', 7),
(2, 'Português', 8),
(3, 'Matemática', 9),
(3, 'Português', 7.5);

/*Criar e Executar Trigger:*/
CREATE TRIGGER calcular_media_notas AFTER INSERT ON historico_notas
FOR EACH ROW
BEGIN
    DECLARE media FLOAT;
    SELECT AVG(nota) INTO media FROM historico_notas WHERE aluno_id = NEW.aluno_id;
    UPDATE aluno SET media_notas = media WHERE id = NEW.aluno_id;
END//
