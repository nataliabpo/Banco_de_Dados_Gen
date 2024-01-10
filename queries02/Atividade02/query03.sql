CREATE TABLE tb_pizzas (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  tamanho VARCHAR(255) NOT NULL,
  preco DECIMAL(10,2) NOT NULL,
  categoria_id BIGINT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);
SELECT * FROM tb_pizzas;

UPDATE tb_pizzas SET borda = TRUE WHERE categoria_id = 1;
UPDATE tb_pizzas SET borda = TRUE WHERE categoria_id = 3;
UPDATE tb_pizzas SET borda = TRUE WHERE categoria_id  = 4;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id);