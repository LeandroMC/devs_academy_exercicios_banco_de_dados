CREATE TABLE ex01.carro (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fabricante VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    ano_fabricacao VARCHAR(4) NOT NULL,
    preco DECIMAL(8, 2) NOT NULL
);

SELECT c.fabricante AS 'Fabricante', c.modelo AS 'Modelo', c.ano_fabricacao AS 'Ano', c.preco AS 'Preço'
FROM ex01.carro c
WHERE c.ano_fabricacao > 1969 AND c.ano_fabricacao < 1980
ORDER BY c.ano_fabricacao;

SELECT c.modelo AS 'MODELO', c.preco AS 'PREÇO'
FROM ex01.carro c
WHERE c.fabricante = 'Ford' AND c.preco <= 15000
ORDER BY c.preco;

SELECT c.fabricante AS 'Fabricante', c.modelo AS 'Modelo', c.ano_fabricacao AS 'Ano', c.preco AS 'Preço'
FROM ex01.carro c
WHERE c.ano_fabricacao > 1999 AND c.ano_fabricacao < 2010 OR c.preco <= 12000
ORDER BY c.preco;

SELECT c.fabricante AS 'Fabricante', c.modelo AS 'Modelo', c.ano_fabricacao AS 'Ano', c.preco AS 'Preço'
FROM ex01.carro c
ORDER BY c.preco
LIMIT 3;

SELECT c.fabricante AS 'Fabricante', c.modelo AS 'Modelo', c.ano_fabricacao AS 'Ano', c.preco AS 'Preço'
FROM ex01.carro c
ORDER BY c.preco DESC
LIMIT 5;

-- Usado BMW no lugar de Harley Davidson
UPDATE ex01.carro
SET preco = preco + (preco * 0.1)
WHERE fabricante = 'BMW';

UPDATE ex01.carro
SET preco = preco + (preco * 0.08)
WHERE fabricante = 'Ford';

UPDATE ex01.carro
SET preco = preco + (preco * 0.16)
WHERE ano_fabricacao > 1959 AND ano_fabricacao < 1970;

-- Usado Mercedes-Benz da décade de 70 no lugar de Mercedes-Benz da década de 30
DELETE FROM ex01.carro
WHERE fabricante = 'Mercedes-Benz' AND ano_fabricacao > 1969 AND ano_fabricacao < 1980;