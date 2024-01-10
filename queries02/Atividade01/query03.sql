CREATE TABLE tb_personagens (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  nivel INT NOT NULL,
  poder_ataque INT NOT NULL,
  poder_defesa INT NOT NULL,
  classe_id BIGINT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (classe_id) REFERENCES tb_classes (id)
);