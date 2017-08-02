
/* Não sei é pra colocar NOT NULL em alguns atributos*/
CREATE TABLE cliente(
    nome VARCHAR(50) NOT NULL,
    cpf CHAR(11),
    dataNasc DATE,
    sexo CHAR,
    rua VARCHAR(50),
    numero INTEGER,
    bairro VARCHAR(50),
    cep CHAR(8),
    email VARCHAR(30),
    PRIMARY KEY (cpf)

);

CREATE TABLE telefones(
    telefone CHAR(9),
    cpf CHAR(11),
    PRIMARY KEY(cpf,telefone),
    FOREIGN KEY (cpf) REFERENCES cliente(cpf)
);

CREATE TABLE dependente(
    nome VARCHAR(50) NOT NULL,
    cpfCliente CHAR(11),
    cpf CHAR(11),
    dataNasc DATE,
    PRIMARY KEY(cpf,cpfCliente),
    FOREIGN KEY (cpfCliente) REFERENCES cliente(cpf)
 );

CREATE TABLE funcionario(
    nome VARCHAR(50) NOT NULL,
    cpf CHAR(11),
    salario NUMERIC(10,4),
    dataNasc DATE NOT NULL,
    funcao VARCHAR(20),
    CHECK(salario>=0),
    PRIMARY KEY(cpf)
);

CREATE TABLE quarto(
    id INTEGER,
    numero INTEGER NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    vista VARCHAR(20),
    diaria NUMERIC(10,4),
    equipamentos VARCHAR(20),
    CHECK (diaria>=0),
    PRIMARY KEY (id)

);


CREATE TABLE nota_fiscal(
    id_nota INTEGER,
    dt_in DATE NOT NULL,
    dt_out DATE NOT NULL,
    valor NUMERIC(10,4),
    cpfCliente CHAR(11),
    idQuarto INTEGER,
    CHECK(valor>=0),
    PRIMARY KEY(id_nota,cpfCliente,idQuarto),
    FOREIGN KEY(cpfCliente) REFERENCES cliente(cpf),
    FOREIGN KEY(idQuarto) REFERENCES quarto(id)
);

CREATE TABLE reserva(
    dt_in DATE NOT NULL,
    dt_out DATE NOT NULL,
    cpf CHAR(11),
    id INTEGER,
    PRIMARY KEY (cpf,id),
    FOREIGN KEY (cpf) REFERENCES cliente(cpf),
    FOREIGN KEY (id) REFERENCES quarto(id)
);

CREATE TABLE hospeda(
    dt_in DATE NOT NULL,
    dt_out DATE NOT NULL,
    cpf CHAR(11),
    id INTEGER,
    PRIMARY KEY(cpf,id),
    FOREIGN KEY (cpf) REFERENCES cliente(cpf),
    FOREIGN KEY (id) REFERENCES quarto(id)
);

CREATE TABLE servico(
    id INTEGER,
    valor NUMERIC(10,4),
    tipo VARCHAR(20) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE produto(
    id integer,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100),
    valor NUMERIC(10,4),
    idServico INTEGER,
    CHECK (valor>=0),
    PRIMARY KEY (id),
    FOREIGN KEY (idServico) REFERENCES servico(id)
);

CREATE TABLE avalia(
    nota INTEGER,
    comentario VARCHAR(100),
    cpf CHAR(11),
    id INTEGER,
    CHECK(nota>=0 and nota<=10),
    PRIMARY KEY (cpf,id),
    FOREIGN KEY (cpf) REFERENCES cliente(cpf),
    FOREIGN KEY (id) REFERENCES servico(id)
);

CREATE TABLE vende(
    data DATE NOT NULL,
    quantidade INTEGER,
    idQuarto INTEGER,
    idProduto INTEGER,
    CHECK (quantidade>=0),
    PRIMARY KEY(idQuarto,idProduto),
    FOREIGN KEY (idQuarto) REFERENCES quarto(id),
    FOREIGN KEY (idProduto) REFERENCES produto(id)

);

CREATE TABLE prestados(
    cpf CHAR(11),
    id INTEGER,
    PRIMARY KEY(cpf,id),
    FOREIGN KEY (cpf) REFERENCES funcionario(cpf),
    FOREIGN KEY (id) REFERENCES servico(id)

);
