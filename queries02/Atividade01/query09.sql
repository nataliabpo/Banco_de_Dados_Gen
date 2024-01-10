SELECT tb_personagens.nome, tb_personagens.poder_ataque, tb_personagens.poder_defesa, tb_classes.nome AS classe
FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;