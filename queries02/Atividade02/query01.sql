CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT, 
nome VARCHAR(255) NOT NULL,
categoria_sabor VARCHAR(255) NULL,
PRIMARY KEY (id)
);
ALTER TABLE tb_classes RENAME TO tb_categoria;
ALTER TABLE tb_categoria RENAME TO tb_categorias;