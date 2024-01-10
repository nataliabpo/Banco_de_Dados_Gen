SELECT tb_pizzas.nome, tb_pizzas.tamanho, tb_pizzas.preco, tb_categorias.nome AS categoria
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.nome = "Doce";