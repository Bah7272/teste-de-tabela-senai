-- 1. Criação da tabela
USE MercadoDB;
CREATE TABLE Compras (
    id INT PRIMARY KEY AUTO_INCREMENT,
    produto VARCHAR(50) NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    quantidade DECIMAL(10, 2) NOT NULL,
    unidade_medida VARCHAR(20)
);

-- 2. Inserção dos dados da imagem
INSERT INTO Compras (produto, preco_unitario, quantidade, unidade_medida) VALUES
('Carne', 30.00, 2.00, 'kilos'),
('Óleo', 10.00, 1.00, 'unidade'),
('Leite', 5.00, 1.50, 'litros'),
('Alface', 3.00, 1.00, 'unidade');

-- 3. Consulta para ver o total por item
SELECT 
    produto, 
    preco_unitario, 
    quantidade, 
    (preco_unitario * quantidade) AS total_item
FROM Compras;