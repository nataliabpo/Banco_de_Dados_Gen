-- Criação banco de dados Cursos Online (EAD)

CREATE database db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

-- query 01
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT, 
nome_categoria VARCHAR(255) NOT NULL,
descricao_categoria VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

