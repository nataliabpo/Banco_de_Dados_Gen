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

-- query 05
INSERT INTO tb_produtos (nome_produto, descricao, preco, quantidade_estoque, categoria_id) VALUES
('Curso de Programação Web', 'Aprenda a programar aplicações web com PHP, HTML, CSS e JavaScript.', 800.00, 100, 2),
('Curso de Marketing Digital', 'Aprenda a criar estratégias de marketing digital para o seu negócio.', 550.00, 50, 2),
('Curso de Design Gráfico', 'Aprenda a criar projetos gráficos profissionais.', 2000.00, 20, 2),
('Curso de Administração de Empresas', 'Aprenda os fundamentos da administração de empresas.', 400.00, 70, 1),
('Curso de Empreendedorismo', 'Aprenda a criar e gerenciar o seu próprio negócio.', 350.00, 30, 1),
('Curso de Desenvolvimento Pessoal', 'Aprenda a desenvolver as suas habilidades pessoais e profissionais.', 250.00, 15, 3),
('Curso de Idiomas', 'Aprenda um novo idioma de forma rápida e eficiente.', 300.00, 25, 4),
('Curso de Música', 'Aprenda a tocar um instrumento musical ou cantar.', 200.00, 10, 4);

-- query06
SELECT * FROM tb_produtos WHERE preco > 500.00;
