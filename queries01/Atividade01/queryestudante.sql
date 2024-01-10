CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT, 
nome VARCHAR(255) NOT NULL,
data_nascimento DATE NOT NULL,
sexo VARCHAR(1) NOT NULL,
endereco VARCHAR(255) NOT NULL,
telefone VARCHAR(11) NOT NULL,

PRIMARY KEY(id)
);
ALTER TABLE tb_estudantes CHANGE sexo genero VARCHAR(255) NOT NULL;
ALTER TABLE tb_estudantes CHANGE telefone nota VARCHAR(255) NOT NULL;

SELECT nome,id FROM tb_estudantes;