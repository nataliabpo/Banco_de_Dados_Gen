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

-- query 05
INSERT INTO tb_produtos (nome_produto, descricao, preco, quantidade_estoque, categoria_id) VALUES
('Cimento', 'Cimento Portland comum, utilizado na construção civil', 35.00, 100, 1),
('Areia', 'Areia fina, utilizada na construção civil', 10.00, 200, 1),
('Tijolos', 'Tijolos cerâmicos, utilizados na construção civil', 2.00, 1000, 1),
('Tinta', 'Tinta látex, utilizada na pintura de paredes', 50.00, 50, 2),
('Ferramentas', 'Kit de ferramentas básicas, utilizado para reparos domésticos', 200.00, 20, 3),
('Geladeira', 'Geladeira de 2 portas, com capacidade de 300 litros', 2.500, 10, 4),
('Fogão', 'Fogão 4 bocas, com acendimento automático', 1.500, 20, 4),
('Cama', 'Cama de solteiro, com cabeceira estofada', 1.000, 50, 5);

-- query06
SELECT * FROM tb_produtos WHERE preco > 100.00;
