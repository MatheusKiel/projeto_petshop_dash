-- Criando o banco de dados
CREATE DATABASE db_petshop;


-- Criando as tabelas
CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    preco_custo NUMERIC(10,2),
    preco_venda NUMERIC(10,2)
);

CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf NUMERIC(11),
    email VARCHAR(100),
    endereco TEXT,
    cidade VARCHAR(100),
    estado VARCHAR(100),
    pais VARCHAR(50)
);

CREATE TABLE lojas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco TEXT,
    cidade VARCHAR(100),
    estado VARCHAR(100),
    pais VARCHAR(50)
);

CREATE TABLE vendas (
    id SERIAL PRIMARY KEY,
    data_venda DATE NOT NULL,
    produto_id INTEGER REFERENCES produtos(id),
    cliente_id INTEGER REFERENCES clientes(id),
    loja_id INTEGER REFERENCES lojas(id),
    quantidade_vendida INTEGER NOT NULL,
    valor_total NUMERIC(10,2)
);

CREATE TABLE estoque (
    id SERIAL PRIMARY KEY,
    produto_id INTEGER REFERENCES produtos(id),
    quantidade INTEGER NOT NULL,
    data_ultima_atualizacao DATE
);


CREATE TABLE fornecedores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    contato TEXT
);

-- Tabela intermediária para relacionar fornecedores e produtos
CREATE TABLE fornecedor_produto (
    id SERIAL PRIMARY KEY,
    fornecedor_id INTEGER REFERENCES fornecedores(id),
    produto_id INTEGER REFERENCES produtos(id)
);
