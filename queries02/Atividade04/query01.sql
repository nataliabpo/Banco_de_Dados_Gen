-- Criação banco de dados Hortifruti

CREATE database db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

-- query 01
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT, 
nome_categoria VARCHAR(255) NOT NULL,
categoria_vencimento BOOLEAN NOT NULL,
PRIMARY KEY (id)
);

