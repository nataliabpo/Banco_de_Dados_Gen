CREATE database db_RH;
USE db_RH;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT, 
nome VARCHAR(255) NOT NULL,
cpf INT NOT NULL,
dataAdmissao DATE NOT NULL,
salario DECIMAL NOT NULL,
cargo VARCHAR (255) NOT NULL,

PRIMARY KEY(id)
);
SELECT * FROM tb_colaboradores;
ALTER TABLE tb_colaboradores MODIFY cpf VARCHAR(11);

INSERT INTO tb_colaboradores
(nome, cpf, dataAdmissao,salario, cargo)
VALUES
("Shirlene", 12323456400,"2024-12-31",3000.00,"Desenvolvedora Web Júnior"),
("Maria", 12723456400,"2024-12-31",3500.00,"Desenvolvedora JS Júnior"), 
("Filomena", 12923456400,"2024-12-31",4000.00,"Desenvolvedora JAVA Júnior"),
("Josefina", 12823456400,"2024-12-31",4000.00,"Desenvolvedora JAVA Júnior"),
("Scarlet", 12123456400,"2024-12-31",4500.00,"Desenvolvedora FullStack Júnior");

SELECT nome,id FROM tb_colaboradores;

SELECT (nome) as "Nome",
(id) as "Código",
(salario) as "Salário" 
FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE id = 2;

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 3550 WHERE id = 3;



