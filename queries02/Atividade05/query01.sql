-- Criação banco de dados Material de Construção

CREATE database db_construindo_vidas;
USE db_construindo_vidas;

-- query 01
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT, 
nome_categoria VARCHAR(255) NOT NULL,
descricao_categoria VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

