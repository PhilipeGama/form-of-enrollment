drop database cadastro_curriculo;
create database cadastro_curriculo CHARACTER set Latin1 collate latin1_swedish_ci;

use cadastro_curriculo;

create table candidato(
    id int auto_increment,
    cpf varchar(14),
    nome varchar(50),
    telefone char(13),
    genero varchar(20),
    estado_civil varchar(20),
    email varchar(40),
    data_nascimento varchar(20),
    local_nascimento varchar(40),
    nacionalidade varchar(40),
    nivel_educacao varchar(40),
    ensino_medio varchar(40),
    formacoes varchar(40),
    experiencias varchar(40),
    ocupacao_atual varchar(40),
    referencias varchar(40),
    primary key(id)
);

create table endereco(
    id int auto_increment,
    id_aluno int,
    rua varchar(50),
    bairro varchar(50),
    cidade varchar(50),
    cep varchar(50),
    uf varchar(50),
    foreign key(id_aluno) references aluno(id),
    primary key(id)
);

select *from candidato c 
inner join endereco e on c.id = e.id_aluno;


-- DELIMITER $$
-- CREATE PROCEDURE inserir_aluno(
-- IN numero_seguranca VARCHAR(20),IN nome VARCHAR(50),
-- IN telefone CHAR(13),IN fax CHAR(13),
-- IN genero VARCHAR(20),IN estado_civil VARCHAR(20),
-- IN email VARCHAR(40),IN dt_nascimento VARCHAR(12),
-- IN local_nascimento VARCHAR(40),IN nacionalidade VARCHAR(40),
-- IN nivel_educacao VARCHAR(40),IN ensino_medio VARCHAR(40),
-- IN conquistas VARCHAR(40),IN ocupacao VARCHAR(40),
-- IN referencias VARCHAR(4),IN minoria VARCHAR(4),
-- IN tipo_minoria VARCHAR(40),IN tipo_doutorado VARCHAR(40),
-- IN id_aluno VARCHAR(50),IN rua VARCHAR(50),
-- IN bairro VARCHAR(50),IN cidade VARCHAR(50),
-- IN cep VARCHAR(50),IN uf VARCHAR(50)
-- )
-- BEGIN
--     SET numero = numero * numero;
-- END $$
-- DELIMITER ;

