CREATE DATABASE loja;

USE loja;

CREATE TABLE produto (
    id INT NOT NULL UNIQUE,
    nome VARCHAR(90) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    preco DOUBLE NULL,
    quantidade INT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE usuario(
    id INT NOT NULL UNIQUE,
    nome VARCHAR(90) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE endereco(
    id INT NOT NULL UNIQUE,
    usuario_id INT NOT NULL UNIQUE,
    rua VARCHAR(255) NOT NULL,
    bairro VARCHAR(255) NOT NULL,
    cidade VARCHAR(90) NOT NULL,
    estado VARCHAR(90) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(usuario_id) REFERENCES usuario(id) 
);
CREATE TABLE ordem(
    id INT NOT NULL UNIQUE,
    produto_id INT NOT NULL UNIQUE,
    usuario_id INT NOT NULL UNIQUE,
    total DOUBLE NOT NULL,
    referencia VARCHAR(255) NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(produto_id) REFERENCES produto(id),
    FOREIGN KEY(usuario_id) REFERENCES usuario(id)
);
