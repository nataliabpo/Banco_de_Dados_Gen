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

-- query 04
INSERT INTO tb_categorias (nome_categoria, categoria_vencimento) VALUES
('Hortaliças', true),
('Vegetais', true),
('Leguminosas', true),
('Frutas', true),
('Grãos', false);

-- query 05
INSERT INTO tb_produtos (nome_produto, descricao, preco, quantidade_estoque, categoria_id) VALUES
('Alface', 'Planta com folhas verdes. Vitaminas A, C e K', 2.00, 20, 1),
('Espinafre', 'Planta com folhas verdes, ricas em ferro. Vitaminas A, C e K', 5.00, 30, 2),
('Brócolis', 'Vegetal verde, rico em fibras, vitamina C e ácido fólico', 10.00, 20, 1),
('Cenoura', 'Vegetal laranja, rico em betacaroteno, vitamina A e fibras.', 4.00, 30, 2),
('Lentilha', 'Semente leguminosa. É rico em proteínas, fibras e ferro.', 10.00, 10, 3),
('Soja', ' Rico em proteínas, fibras e ferro.', 20.00, 5, 3),
('Maçã', 'Fruta redonda, de casca vermelha ou verde. É rica em vitaminas A, C e fibras.', 5.00, 100, 4),
('Aveia', 'Semente comestível de uma planta gramínea. É uma boa fonte de carboidratos e fibras.', 10.00, 5, 5);

-- query06
SELECT * FROM tb_produtos WHERE preco > 50.00;
-- query07
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 60.00;
-- query08
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';
-- query09
SELECT tb_produtos.nome_produto, tb_produtos.preco, tb_categorias.nome_categoria AS categoria FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;
SELECT tb_produtos.nome_produto, tb_produtos.preco, tb_categorias.nome_categoria AS categoria
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome_categoria = 'Frutas';