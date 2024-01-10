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
('Administração', 'Cursos voltados para a administração de empresas.'),
('Tecnologia', 'Cursos voltados para a área de Tecnologia.'),
('Soft Skills', 'Cursos voltados para o desenvolvimento pessoal e profissional.'),
('Outros', 'Cursos que não se encaixam em nenhuma das categorias anteriores.');

