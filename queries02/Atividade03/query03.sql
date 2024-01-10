-- Criação banco de dados Farmácia

CREATE database db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

-- query 01
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT, 
nome VARCHAR(255) NOT NULL,
categoria VARCHAR(255) NULL,
PRIMARY KEY (id)
);

ALTER TABLE tb_categorias RENAME COLUMN categoria TO categoria_vencimento; ALTER TABLE tb_categorias 
MODIFY categoria_vencimento BOOLEAN;

-- query 02
CREATE TABLE tb_produtos (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  descricao VARCHAR(1024),
  preco DECIMAL(10,2) NOT NULL,
  quantidade_estoque INT NOT NULL,
  categoria_id BIGINT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

-- query 03
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id);


