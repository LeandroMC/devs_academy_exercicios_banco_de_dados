CREATE DATABASE ex01 CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE ex01.cliente (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    email VARCHAR(50) NOT NULL,
    usuario VARCHAR(50) NOT NULL,
    senha VARCHAR(50) NOT NULL
);

CREATE TABLE ex01.telefone (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ddd VARCHAR(3) NOT NULL,
    numero VARCHAR(9) NOT NULL,
    tipo ENUM('FIXO', 'CELULAR') NOT NULL,
    cliente_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES ex01.cliente (id)
);

CREATE TABLE ex01.endereco (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    logradouro VARCHAR(50) NOT NULL,
    numero VARCHAR(5) NOT NULL,
    complemento VARCHAR(50),
    cep VARCHAR(8) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado VARCHAR(50) NOT NULL,
    cliente_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES ex01.cliente (id)
);

CREATE TABLE ex01.pedido (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    forma_pagto ENUM('BOLETO', 'CARTÃO DE CRÉDITO', 'PIX') NOT NULL,
    status_pedido VARCHAR(30) NOT NULL,
    data_pedido DATETIME NOT NULL,
    data_entrega DATETIME,
    cliente_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES ex01.cliente (id)
);

CREATE TABLE ex01.produto (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(50) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(7, 2) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    quantidade_estoque INT NOT NULL
);

CREATE TABLE ex01.pedido_produto (
    pedido_id INT NOT NULL,
    produto_id INT NOT NULL,
    quantidade INT NOT NULL,
    PRIMARY KEY (pedido_id, produto_id),
    FOREIGN KEY (pedido_id) REFERENCES ex01.pedido (id),
    FOREIGN KEY (produto_id) REFERENCES ex01.produto (id)
);

ALTER TABLE ex01.cliente 
ADD data_nascimento DATE NOT NULL;

ALTER TABLE ex01.endereco
ADD bairro VARCHAR(50) NOT NULL;