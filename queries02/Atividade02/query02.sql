CREATE TABLE tb_pizzas (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  tamanho VARCHAR(255) NOT NULL,
  preco DECIMAL(10,2) NOT NULL,
  categoria_id BIGINT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

ALTER TABLE tb_pizzas ADD COLUMN borda BOOLEAN;