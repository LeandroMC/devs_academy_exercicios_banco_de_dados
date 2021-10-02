-- 1. Visualizar os databases existentes:
SHOW DATABASES;

-- 2. Criar um database chamado "sistema":
CREATE DATABASE sistema;

-- 3. Visualizar novamente os databases existentes e definir como padrão o database "sistema":
SHOW DATABASES;

USE sistema;

-- 4. Definir o mecanismo padrão como InnoDB (transacional). Este comando funciona somente no MySQL.

-- 5. Definir o mecanismo padrão para aceitar acentuação na inclusão de dados. Isso deve ser feito antes da entrada de dados. Os dados que já foram armazenados não mostrará acentuação.

-- 6. Criar a tabela "departamento", conforme especificado no diagrama:
CREATE TABLE sistema.departamento (
    id_departamento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    telefone CHAR(15)
);
-- 7. Visualizar a estrutura da tabela "departamento":
DESC sistema.departamento;
-- 8. Criar a tabela "funcionario", conforme especificado no diagrama (observe a chave estrangeira - Foreign Key):
CREATE TABLE sistema.funcionario (
    id_funcionario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    data_cadastro DATE,
    id_departamento INT NOT NULL,
    FOREIGN KEY (id_departamento) REFERENCES sistema.departamento (id_departamento)
);
-- 9. Deletar a tabela funcionário.
DROP TABLE sistema.funcionario;

-- 10. Criar a tabela "funcionario", conforme especificado no diagrama (sem a chave estrangeira - Foreign Key):
CREATE TABLE sistema.funcionario (
    id_funcionario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    data_cadastro DATE,
    id_departamento INT NOT NULL
);
-- 11. Alterar a tabela criada anteriormente para adicionar a chave estrangeira (para quando se esquece da chave estrangeira).
ALTER TABLE sistema.funcionario
ADD CONSTRAINT
FOREIGN KEY (id_departamento) REFERENCES sistema.departamento (id_departamento);
-- 12. Inserindo registros na tabela "departamento" (sem especificação dos campos):
INSERT INTO sistema.departamento 
VALUES
(1, 'Business Development', '011 4192-6506'),
(2, 'Accounting', '096 7226-9777'),
(3, 'Services', '087 5437-4237'),
(4, 'Support', '074 2490-9937'),
(5, 'Human Resources', '079 4369-5690'),
(6, 'Legal', '075 1253-3029'),
(7, 'Training', '067 5946-5351'),
(8, 'Engineering', '093 2941-2037'),
(9, 'Accounting', '056 0904-0476'),
(10, 'Services', '043 8945-0400');
-- 13. Inserindo registro na tabela "departamento" (com especificação dos campos):
INSERT INTO sistema.departamento (id_departamento, nome, telefone) 
VALUES 
(DEFAULT, 'Human Resources', '011 2955-7676'),
(DEFAULT, 'Marketing', '076 8847-7380'),
(DEFAULT, 'Services', '054 1914-2586'),
(DEFAULT, 'Accounting', '008 5290-0881'),
(DEFAULT, 'Marketing', '029 9876-8367'),
(DEFAULT, 'Business Development', '079 1051-7102'),
(DEFAULT, 'Engineering', '082 1507-9204'),
(DEFAULT, 'Business Development', '044 2312-6053'),
(DEFAULT, 'Business Development', '098 4108-2356'),
(DEFAULT, 'Sales', '099 2025-4936');
-- 14. Inserir mais 5 registros na tabela “departamento”
INSERT INTO sistema.departamento (nome, telefone) 
VALUES
('Legal', '067 3566-2928'),
('Services', '079 6551-6340'),
('Marketing', '071 5569-1810'),
('Accounting', '057 6040-2184'),
('Services', '023 0816-6880');
-- 15. Visualizar todos os dados da tabela "departamento":
SELECT * FROM sistema.departamento;
-- 16. Visualizar todos os campos e todos os atributos da tabela "departamento" em ordem alfabética de nome:
SELECT * FROM sistema.departamento
ORDER BY nome ASC;
-- 17. Visualizar os dados da tabela "departamento" em ordem decrescente de nome:
SELECT * FROM sistema.departamento
ORDER BY nome DESC;
-- 18. Visualizar os dados dos departamentos para os quais não foram atribuídos telefones.
SELECT * FROM sistema.departamento
WHERE telefone IS NULL;
-- 19. Visualizar os dados dos departamentos que tenham telefones.
SELECT * FROM sistema.departamento
WHERE telefone IS NOT NULL;
-- 20. Visualizar os dados dos departamentos cujo código seja igual a 300. Perceba que "id_departamento" é a chave primária.
SELECT * FROM sistema.departamento
WHERE id_departamento = 300;
-- 21. Visualizar os dados dos departamentos cujo nome começa com a letra "D":
SELECT * FROM sistema.departamento
WHERE nome LIKE 'D%';
-- 22. Visualizar os dados dos departamentos cujo nome termina com a palavra "Vendas":
SELECT * FROM sistema.departamento
WHERE nome LIKE '%Vendas';
-- 23. Visualizar os dados dos departamentos cujo nome contenha a palavra "de":
SELECT * FROM sistema.departamento
WHERE nome LIKE '%de%';
-- 24. Visualizar os dados dos departamentos cujo nome NÃO contenha a palavra "de":
SELECT * FROM sistema.departamento
WHERE nome NOT LIKE '%de%';
-- 25. Visualizar o telefone do departamento cujo código identificador seja igual a 300:
SELECT d.telefone FROM sistema.departamento d
WHERE id_departamento = 300;
-- 26. Apagar departamento cujo código seja igual a 400:
DELETE FROM sistema.departamento
WHERE id_departamento = 400;
-- 27. Digite o comando para fechar/desconectar do MySQL.
QUIT
-- 28. Digite o comando para verificar a versão e data atual.
SELECT @@version, now();
-- 29. Digite o comando para verificar o usuário.
SELECT CURRENT_USER;
-- 30. Digite o comando para cancelar outro comando que está no meio do processo de entrada o prompt.
SQL KILL QUERY