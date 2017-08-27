INSERT INTO cliente
VALUES ('12345678901', 'João da Silva', DATEnasc, 'M', 'Rua das Casas Vermelhas', 'Bairro das Casas Coloridas', '50000123', 'joao_silva@gmail.com');
INSERT INTO cliente
VALUES ('12345678902', 'Maria da Costa', DATEnasc, 'S', 'Rua das Casas Azuis', 'Bairro das Casas Coloridas', '50000123', 'maria_costa@gmail.com');
INSERT INTO cliente
VALUES ('12345678903', 'Francisco Sousa', DATEnasc, 'M', 'Rua ABC', 'Bairro das Alfabéticas', '50000124', 'francisco_sousa@gmail.com');
INSERT INTO cliente
VALUES ('12345678904', 'Ana Oliveira', DATEnasc, 'S', 'Rua XYZ', 'Bairro das Alfabéticas', '50000124', 'ana_oliveira@gmail.com');
INSERT INTO cliente
VALUES ('12345678905', 'Roberto Moraes', DATEnasc, 'M', 'Rua Valete', 'Bairro do Baralho', '50000125', 'roberto_moraes@gmail.com');

INSERT INTO dependente
Values ('12345678911', '12345678901', 'João da Silva Júnior', DATEnasc);
INSERT INTO dependente
Values ('12345678912', '12345678901', 'Beatriz da Silva', DATEnasc);
INSERT INTO dependente
Values ('12345678913', '12345678902', 'Carlos da Costa', DATEnasc);
INSERT INTO dependente
Values ('12345678914', '12345678903', 'Daniel Sousa', DATEnasc);
INSERT INTO dependente
Values ('12345678915', '12345678904', 'Elena Oliveira', DATEnasc);

INSERT INTO funcionario
Values ('12345678921', 'Gabriel Medeiros', 2500.00, DATEnasc, 'Função');
INSERT INTO funcionario
Values ('12345678922', 'Hiago Moraes', 3500.00, DATEnasc, 'Função');
INSERT INTO funcionario
Values ('12345678923', 'Igor Ferreira', 2500.00, DATEnasc, 'Função');
INSERT INTO funcionario
Values ('12345678924', 'Jorge Dantas', 2500.00, DATEnasc, 'Função');
INSERT INTO funcionario
Values ('12345678925', 'Kléber Rodrigues', 2500.00, DATEnasc, 'Função');

INSERT INTO quarto
Values (01, 101, 'Tipo', 'Vista', 300.00);
INSERT INTO quarto
Values (02, 102, 'Tipo', 'Vista', 300.00);
INSERT INTO quarto
Values (03, 103, 'Tipo', 'Vista', 300.00);
INSERT INTO quarto
Values (04, 201, 'Tipo', 'Vista', 500.00);
INSERT INTO quarto
Values (05, 202, 'Tipo', 'Vista', 500.00);

INSERT INTO servico
Values (01, 50.00);
INSERT INTO servico
Values (02, 60.00);
INSERT INTO servico
Values (03, 70.00);
INSERT INTO servico
Values (04, 80.00);
INSERT INTO servico
Values (05, 90.00);

INSERT INTO hospedagem
Values (data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    cpf_cliente CHAR(11),
    id_quarto NUMBER);

INSERT INTO reserva
Values (data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    cpf_cliente CHAR(11),
    id_quarto NUMBER);

INSERT INTO servico_prestado
Values (cpf_func, id_servico NUMBER);

INSERT INTO lavanderia
Values (id_lavanderia NUMBER);

INSERT INTO frigobar
Values (id_frigobar NUMBER);

INSERT INTO restaurante
Values (id_rest NUMBER);

INSERT INTO bar
Values (id_bar NUMBER);

INSERT INTO produto
Values (id_produto NUMBER,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(200),
    valor NUMBER(9, 2) NOT NULL, 
    id_lavanderia NUMBER,
    id_frigobar NUMBER,
    id_rest NUMBER,
    id_bar NUMBER,);
    
INSERT INTO venda
Values ( id_produto NUMBER,
    id_quarto NUMBER,
    quantidade NUMBER,
    data DATE);
    
INSERT INTO avaliacao
Values (id_servico NUMBER,
    cpf_cliente CHAR(11),
    nota NUMBER,
    comentario VARCHAR(200));
    
INSERT INTO telefone
Values (telefone VARCHAR(20),
    cpf_cliente CHAR(11));
    
INSERT INTO equipamento
Values (equipamento VARCHAR(20),
    id_quarto NUMBER);
    
INSERT INTO passeio_turistico
Values (id_passeio NUMBER);

INSERT INTO estacionamento
Values (id_estacionamento NUMBER);

INSERT INTO nota_fiscal
Values (id_nota VARCHAR(5),  
        cpf_cliente CHAR(11) NOT NULL,  
        id_quarto NUMBER,  
        dt_in DATE,  
        dt_out DATE,  
        valor_nota NUMERIC(9,2));

