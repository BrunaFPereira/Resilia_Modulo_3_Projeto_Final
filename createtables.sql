
CREATE TABLE tb_departamentos 
(
	id_departamento varchar(10) NOT NULL,
	nome varchar(50),
	PRIMARY KEY (id_departamento)
);

CREATE TABLE tb_modulos
(
id_modulo VARCHAR(10) NOT NULL,
nome VARCHAR(50),
PRIMARY KEY(id_modulo)
);

CREATE TABLE tb_cursos
(
	id_curso VARCHAR(50) NOT NULL,
    nome VARCHAR(100),
    PRIMARY KEY(id_curso)
);

CREATE TABLE tb_funcionarios 
(
	id_funcionario varchar(10) NOT NULL,
    id_departamento varchar(5),
	nome varchar(50) null,
	especialidades varchar(200) null,
    PRIMARY KEY (id_funcionario),
    CONSTRAINT fk_funcDep FOREIGN KEY (id_departamento) REFERENCES tb_departamentos (id_departamento)
);

CREATE TABLE tb_turmas
(
	codigo_turma varchar(3) NOT NULL,
    id_curso VARCHAR(50),
    id_modulo VARCHAR (10),
	id_facilitador_soft varchar(50) NULL,
	id_facilitador_tech varchar(50) NULL,
	periodo varchar(50),
    data_inicio date,
    data_fim date,
    PRIMARY KEY(codigo_turma),
	CONSTRAINT fk_TurmaFacilitadorSoft FOREIGN KEY (id_facilitador_soft) REFERENCES tb_funcionarios (id_funcionario),
    CONSTRAINT fk_TurmaFacilitadorTech FOREIGN KEY (id_facilitador_tech) REFERENCES tb_funcionarios (id_funcionario),
    CONSTRAINT fk_TurmaCurso FOREIGN KEY (id_curso) REFERENCES tb_cursos (id_curso),
    CONSTRAINT fk_TurmaModulo FOREIGN KEY (id_modulo) REFERENCES tb_modulos (id_modulo)
);

CREATE TABLE tb_alunos 
( 
	cpf varchar (11) NOT NULL,
	nome varchar (50), 
	email varchar (500),
	sexo varchar (1),
	codigo_turma varchar (3),
	idade int ,	
	PRIMARY KEY (cpf),
	CONSTRAINT fk_AlunosTurma FOREIGN KEY (codigo_turma) REFERENCES tb_turmas (codigo_turma)
);





 	





































