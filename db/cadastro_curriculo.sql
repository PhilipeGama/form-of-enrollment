drop database if exists cadastro_curriculo;
create database cadastro_curriculo CHARACTER set Latin1 collate latin1_swedish_ci;

use cadastro_curriculo;

create table candidato(
    id int auto_increment,
    cpf varchar(14),
    nome varchar(50),
    telefone varchar(15),
    genero varchar(20),
    estado_civil varchar(20),
    email varchar(40),
    data_nascimento varchar(20),
    local_nascimento varchar(40),
    nacionalidade varchar(40),
    nivel_educacao varchar(40),
    formacoes varchar(40),
    experiencias varchar(40),
    ocupacao_atual varchar(40),
    referencias varchar(40),
    primary key(id)
);

create table endereco(
    id int auto_increment,
    id_candidato int,
    rua varchar(50),
    bairro varchar(50),
    cidade varchar(50),
    cep varchar(50),
    uf varchar(50),
    foreign key(id_candidato) references candidato(id),
    primary key(id)
);

select *from endereco;


desc candidato;

