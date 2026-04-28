-- 1. ESTRUTURA INICIAL
CREATE DATABASE IF NOT EXISTS MercadoDB;
USE MercadoDB;

-- 2. SEGURANÇA (Onde inserir os novos códigos)
-- Criando o usuário para o Emerson
CREATE USER IF NOT EXISTS 'emerson_admin'@'localhost' IDENTIFIED BY 'senha123';
GRANT ALL PRIVILEGES ON MercadoDB.* TO 'emerson_admin'@'localhost';
FLUSH PRIVILEGES;

-- 3. CRIAÇÃO DAS TABELAS
CREATE TABLE IF NOT EXISTS Compras (
    id INT PRIMARY KEY AUTO_INCREMENT,
    produto VARCHAR(50),
    preco_unitario DECIMAL(10,2),
    quantidade DECIMAL(10,2),
    unidade_medida VARCHAR(20)
);

-- 4. MANIPULAÇÃO DE DADOS
INSERT INTO Compras (produto, preco_unitario, quantidade, unidade_medida) 
VALUES ('Carne', 30.00, 2.00, 'kilos');

-- Restante do CRUD (Consulta, Alteração, Exclusão)...