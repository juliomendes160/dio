Clientes(id, nome)
Produtos(id, nome, valor)
Vendas(id, idcliente, idproduto, data)

SELECT c.id, c.nome, count(v.id), sum(p.valor)
FROM Clientes c
JOIN Vendas v ON c.id = vidcliente
JOIN Produtos p ON p.id = v.idproduto
WHERE v.data >= `2017-01-01`
GROUP BY 1, 2;