INSERT INTO tb_pizzas (nome, tamanho, preco, categoria_id)
VALUES
("Pizza de Calabresa", "Grande", 50.00, 1),
("Pizza de Frango com Catupiry", "Média", 45.00, 1),
("Pizza de Mussarela", "Pequena", 30.00, 1),
("Pizza de Chocolate", "Grande", 60.00, 2),
("Pizza de Morango", "Média", 55.00, 2),
("Pizza de Abacaxi", "Pequena", 40.00, 2),
("Pizza de Rúcula e Tomate Seco", "Grande", 55.00, 3),
("Pizza de Abobrinha e Espinafre", "Média", 45.00, 3),
("Pizza de Vegetais", "Pequena", 35.00, 4);

SELECT * FROM tb_pizzas WHERE borda = TRUE;
SELECT * FROM tb_pizzas;
