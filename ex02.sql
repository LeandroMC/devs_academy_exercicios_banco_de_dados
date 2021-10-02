USE ex01;

INSERT INTO ex01.cliente (nome, cpf, data_nascimento, email, usuario, senha)
VALUES (
    'Isabelle Sousa',
    '368.912.069-10',
    '1968-02-08',
    'isabelle@email.com',
    'isabell3',
    'isa123belle'
);

INSERT INTO ex01.telefone (ddd, numero, tipo, cliente_id)
VALUES (
    '67',
    '71496981',
    'FIXO',
    1
);

INSERT INTO ex01.endereco (logradouro, numero, bairro, cep, cidade, estado, cliente_id)
VALUES (
    'Rua Herculano Metello Peres',
    '1002',
    'Conj. Residencial Mata do Jacinto',
    '79033410',
    'Campo Grande',
    'Mato Grosso do Sul',
    1
);

INSERT INTO ex01.cliente 
VALUES (
    DEFAULT,
    'Estevan Pereira',
    '973.591.461-19',
    'estevan@email.com',
    '3st3v4n',
    'est456van',
    '1992-10-17'
);

INSERT INTO ex01.telefone
VALUES (
    DEFAULT,
    '27',
    '68627194',
    'CELULAR',
    2
);

INSERT INTO ex01.endereco
VALUES (
    DEFAULT,
    'Rua Alecrim',
    '1094',
    NULL,
    '29112250',
    'Vila Velha',
    'Espírito Santo',
    2,
    'Novo México'
);