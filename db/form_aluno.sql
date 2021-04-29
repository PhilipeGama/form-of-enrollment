drop database form_aluno;
create database form_aluno CHARACTER set Latin1 collate latin1_swedish_ci;

use form_aluno;

create table aluno(
    id int auto_increment,
    numero_seguranca varchar(20),
    nome varchar(50),
    telefone char(13),
    fax char(13),
    genero varchar(20),
    estado_civil varchar(20),
    email varchar(40),
    dt_nascimento varchar(20),
    local_nascimento varchar(40),
    nacionalidade varchar(40),
    nivel_educacao varchar(40),
    ensino_medio varchar(40),
    conquistas varchar(40),
    ocupacao varchar(40),
    referencias varchar(40),
    minoria char(4),
    tipo_minoria varchar(40),
    tipo_doutorado varchar(40),
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

select *from aluno a 
inner join endereco e on a.id = id_aluno;


DELIMITER $$
CREATE PROCEDURE inserir_aluno(
IN numero_seguranca VARCHAR(20),IN nome VARCHAR(50),
IN telefone CHAR(13),IN fax CHAR(13),
IN genero VARCHAR(20),IN estado_civil VARCHAR(20),
IN email VARCHAR(40),IN dt_nascimento VARCHAR(12),
IN local_nascimento VARCHAR(40),IN nacionalidade VARCHAR(40),
IN nivel_educacao VARCHAR(40),IN ensino_medio VARCHAR(40),
IN conquistas VARCHAR(40),IN ocupacao VARCHAR(40),
IN referencias VARCHAR(4),IN minoria VARCHAR(4),
IN tipo_minoria VARCHAR(40),IN tipo_doutorado VARCHAR(40),
IN id_aluno VARCHAR(50),IN rua VARCHAR(50),
IN bairro VARCHAR(50),IN cidade VARCHAR(50),
IN cep VARCHAR(50),IN uf VARCHAR(50)
)
BEGIN
    SET numero = numero * numero;
END $$
DELIMITER ;

