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

-- query 04
INSERT INTO tb_categorias (nome, categoria_vencimento) VALUES
('Medicamentos', false),
('Cosméticos', false),
('Alimentos', false),
('Higiene pessoal', false),
('Outros', true);

-- query 05
INSERT INTO tb_produtos (nome, descricao, preco, quantidade_estoque, categoria_id) VALUES
('Dipirona', 'Remédio para dor', 10.00, 100, 1),
('Creme hidratante', 'Hidrata a pele', 20.00, 50, 2),
('Paracetamol', 'Remédio para febre', 5.00, 200, 1),
('Shampoo', 'Limpeza para o cabelo', 30.00, 150, 2),
('Chocolate', 'Alimento básico', 10.00, 1000, 3),
('Barra de Cereal', 'Alimento básico', 20.00, 500, 3),
('Sabonete', 'Higiene pessoal', 5.00, 1000, 4),
('Elático de Cabelo', 'Acessório de cabelo', 10.00, 500, 5);

-- query06
SELECT * FROM tb_produtos WHERE preco > 50.00;


