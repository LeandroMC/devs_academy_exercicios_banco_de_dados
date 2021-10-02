SELECT c.nome as 'Cliente', t.numero as 'Telefone' FROM ex01.cliente c
INNER JOIN ex01.telefone t
ON c.id = t.cliente_id;