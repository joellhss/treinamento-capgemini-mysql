USE treinamento_capgemini;
CREATE TABLE CATEGORIAS
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(50) NOT NULL
);

CREATE TABLE PRODUTOS
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    DESCRICAO VARCHAR(100) NOT NULL,
    QTDESTOQUE FLOAT NOT NULL,
    PRECO FLOAT NOT NULL,
    CATEGORIAID INT NOT NULL,
    FOREIGN KEY (CATEGORIAID) REFERENCES CATEGORIAS (ID)
);

INSERT INTO CATEGORIAS (NOME) VALUES ('FRIOS');

INSERT INTO PRODUTOS (DESCRICAO, PRECO, QTDESTOQUE, CATEGORIAID)
VALUES ('Queijo', 99.99, 9999, 1);