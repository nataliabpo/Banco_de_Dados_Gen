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

-- query 04
INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Materiais de Construção', 'Materiais utilizados na construção civil, como cimento, areia, tijolos, etc.'),
('Tintas e Vernizes', 'Tintas e vernizes utilizados na pintura de superfícies, como paredes, móveis, etc.'),
('Ferramentas', 'Ferramentas utilizadas para reparos e manutenções, como chaves de fenda, martelos, etc.'),
('Eletrodomésticos', 'Eletrodomésticos utilizados no dia a dia, como geladeiras, fogões, etc.'),
('Móveis', 'Móveis utilizados para mobiliar ambientes, como camas, sofás, etc.');

