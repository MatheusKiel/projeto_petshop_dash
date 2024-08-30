-- Criando o banco de dados
-- CREATE DATABASE db_petshop;


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
    cidade VARCHAR(100),
    estado VARCHAR(100),
    pais VARCHAR(50)
);

CREATE TABLE lojas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
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
    endereco TEXT,
    contato TEXT
);

-- Tabela intermediária para relacionar fornecedores e produtos
CREATE TABLE fornecedor_produto (
    id SERIAL PRIMARY KEY,
    fornecedor_id INTEGER REFERENCES fornecedores(id),
    produto_id INTEGER REFERENCES produtos(id)
);


INSERT INTO fornecedores (nome, endereco) VALUES ('Medvet Atacado', 'Rua da pedra, 2656');
INSERT INTO fornecedores (nome, endereco) VALUES ('PetClinic', 'Rua da lua, 7000');
INSERT INTO fornecedores (nome, endereco) VALUES ('PataPet Comercio Atacado', 'Rua dos Trilhos, 6998');
INSERT INTO fornecedores (nome, endereco) VALUES ('PetShower' , 'Estrada Brigadeiro, 250');
INSERT INTO fornecedores (nome, endereco) VALUES ('Amicão Atacado', 'Rua Dezenove de Setembro, s/n');
INSERT INTO produtos (nome, categoria, preco_custo, preco_venda) VALUES ('Disco frisbee','Brinquedo',5,15);
INSERT INTO produtos (nome, categoria, preco_custo, preco_venda) VALUES ('Bola mordedor','Brinquedo',5,13);
INSERT INTO produtos (nome, categoria, preco_custo, preco_venda) VALUES ('Ração Premium Care','Comida',30,90);
INSERT INTO produtos (nome, categoria, preco_custo, preco_venda) VALUES ('Ração Premium Light','Comida',50,150);
INSERT INTO produtos (nome, categoria, preco_custo, preco_venda) VALUES ('Casa de cachorro - G','Conforto',80,235);
INSERT INTO produtos (nome, categoria, preco_custo, preco_venda) VALUES ('Casa de cachorro - M','Conforto',70,215);
INSERT INTO produtos (nome, categoria, preco_custo, preco_venda) VALUES ('Casa de cachorro - P','Conforto',60,200);
INSERT INTO produtos (nome, categoria, preco_custo, preco_venda) VALUES ('Cama de cachorro - G','Conforto',50,150);
INSERT INTO produtos (nome, categoria, preco_custo, preco_venda) VALUES ('Cama de cachorro - M','Conforto',35,120);
INSERT INTO produtos (nome, categoria, preco_custo, preco_venda) VALUES ('Cama de cachorro - P','Conforto',20,85);
INSERT INTO lojas (nome, cidade, estado, pais) VALUES ('Loja 01', 'São Paulo', 'SP', 'Brasil');
INSERT INTO lojas (nome, cidade, estado, pais) VALUES ('Loja 02', 'Curitiba', 'PR', 'Brasil');
INSERT INTO lojas (nome, cidade, estado, pais) VALUES ('Loja 03', 'Salvador', 'BH', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('José Miguel da Rocha','41691069388','exemplo@mail.com','São Paulo', 'SP', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Luara da Cunha','33140492006','exemplo@mail.com','São Paulo', 'SP', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Isis Casa Grande','74322986889','exemplo@mail.com','São Paulo', 'SP', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Pedro Miguel Borges','07521180135','exemplo@mail.com','São Paulo', 'SP', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Diogo da Conceição','47141584498','exemplo@mail.com','São Paulo', 'SP', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Beatriz Vieira','98042600429','exemplo@mail.com','São Paulo', 'SP', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Pedro da Conceição','65191777506','exemplo@mail.com','São Paulo', 'SP', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Liam Araújo','64429316503','exemplo@mail.com','São Paulo', 'SP', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Anthony Rezende','68599780077','exemplo@mail.com','São Paulo', 'SP', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Melina Ramos','42591058172','exemplo@mail.com','São Paulo', 'SP', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Heloisa Rios','02641905728','exemplo@mail.com','São Paulo', 'SP', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Maria Julia da Rosa','64074888343','exemplo@mail.com','São Paulo', 'SP', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Augusto Ferreira','06701382665','exemplo@mail.com','Curitiba', 'PR', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Ayla da Costa','01424422086','exemplo@mail.com','Curitiba', 'PR', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Lorenzo Nogueira','76286833552','exemplo@mail.com','Curitiba', 'PR', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Vitor Almeida','50397213158','exemplo@mail.com','Curitiba', 'PR', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Davi Lucca Câmara','54898843123','exemplo@mail.com','Curitiba', 'PR', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Thales Alves','93774441871','exemplo@mail.com','Curitiba', 'PR', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Lucas Gabriel Fonseca','73120387274','exemplo@mail.com','Curitiba', 'PR', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Maria Vitória Freitas','10195152441','exemplo@mail.com','Curitiba', 'PR', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Luiz Felipe Viana','60857332244','exemplo@mail.com','Curitiba', 'PR', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Davi Miguel Lopes','38614373503','exemplo@mail.com','Curitiba', 'PR', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Ravi Freitas','11906765677','exemplo@mail.com','Curitiba', 'PR', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Yan da Cruz','34825218407','exemplo@mail.com','Curitiba', 'PR', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Maria Vitória Correia','50473272059','exemplo@mail.com','Curitiba', 'PR', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Beatriz da Luz','75816558579','exemplo@mail.com','Curitiba', 'PR', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('João Felipe Santos','73164381263','exemplo@mail.com','Curitiba', 'PR', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Yan Rodrigues','51250415136','exemplo@mail.com','Salvador', 'BH', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Noah Campos','99803610856','exemplo@mail.com','Salvador', 'BH', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Natália Jesus','18329859703','exemplo@mail.com','Salvador', 'BH', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Nicolas Casa Grande','68312372237','exemplo@mail.com','Salvador', 'BH', 'Brasil');
INSERT INTO clientes (nome, cpf, email, cidade, estado, pais) VALUES ('Nathan Montenegro','60102682305','exemplo@mail.com','Salvador', 'BH', 'Brasil');
