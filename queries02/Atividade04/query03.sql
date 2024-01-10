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

-- query 02
CREATE TABLE tb_produtos (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome_produto VARCHAR(255) NOT NULL,
  descricao VARCHAR(1024),
  preco DECIMAL(10,2) NOT NULL,
  quantidade_estoque INT NOT NULL,
  categoria_id BIGINT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

-- query 03
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id);

