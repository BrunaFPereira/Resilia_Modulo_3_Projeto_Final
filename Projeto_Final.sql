

CREATE TABLE tb_facilitadores (
	registro int,
	nome varchar(50) null,
	area_de_atuacao varchar(50)null,
	especialidades varchar(200) null,
    PRIMARY KEY (registro)
);

insert into tb_facilitadores (registro, nome, area_de_atuacao,especialidades) values
(23001, 'Carla Ruilova Rodriguez','Soft','comunicacao nao violenta, pscicologia corporativa,linguas estrangeiras'),
(23002,'Bruna Murilla', 'Tech','matematica aplicada,algebra lienar, Matlab'),
(23003,'Leticia Casagrande Rodrigues','Tech','Java,C++,Cobol,Python'),
(23004,'Larissa Ruza','Soft','Recrutamento,terapia do esquema'),
(23005,'Frederico Farrokh Bulsara','Tech','Python,JavaScript,CSS,HTML,C#'),
(23006,'Thais Delcaro','Tech','SQL,R,Python,C,C++,assembly,regressões,calculo numerico,equacoes diferenciais');

select * from tb_facilitadores;

CREATE TABLE tb_aluno ( 
nome varchar (50), 
email varchar (500),
cpf varchar (11),
sexo varchar (1),
turma varchar (3),
idade int ,	
PRIMARY KEY (cpf));
	

INSERT INTO tb_aluno (nome,email,cpf,sexo,turma,idade) VALUES
('Tatiany Castelhano', 'tatynhacast@hotmail.com', '21677890021', 'F','T10',40),
('Vitor Hugo Palmieri', 'vitorpalmieri@hotmail.com', '21900799853', 'M', 'T10', 25),
('Henrique Lima', 'henriquinho@gmail.com', '23456789121','M','T10', 22),
('Ana Catarina Lima','analima@gmail.com','32145678731' , 'F','T10', 33),
('Paulo Andrade Torres', 'paulott@hotmail.com','23145678721','M', 'T10', 39),
('Cristina de Paula Assunção','crispa@outlook.com', '33322211156', 'F', 'T13', 44),
('Jose Antonio Gutierres','jose@gmail.com ', '45366632140', 'M', 'T11', 33),
('Roberto de Souza', 'roberto1999@gmail.com', '2234532123', 'M','T11',22),
('Santos Crespo Filho', 'santos45673@hotmail.com','34567898721','M','T11',37),
('Paula Sanots Silva', 'paulapaulete@hotmail.com', '22233244321', 'F','T11',43),
('Rebeca Antunes', 'rebecarebeca@hotmail.com', '43212345421','F','T12',22),
('Alexandre Raffa','alexrafa@outlook.com', '21345676521','M','T12', 41),
('Priscila Campos','priscilacampos@gmail.com','23565432141', 'F', 'T12',36),
('Andre Gonçalves', 'andregç@gmail.com', '34565434521', 'F', 'T12', 37),
('Rita Moreno', 'ritamoreno@outlook.com', '21343215621', 'F','T12',43),
('Joarani Silva ', 'iranisilva@hotmail.com', '23145674321','M','T13', 29),
('Maria Augusta Oliveira', 'marykay@gmail.com', '32145676531', 'F', 'T13', 51),
('Eugenio Gomes','eugeninho@outlook.com', '21343214365','M','T13',42),
('Tancredo Neves','tancredoneves@gmail.com','32156700098','M', 'T13', 70);

select * from tb_aluno ;

CREATE TABLE tb_departamento (
	registro_depart int,
	nome varchar(50),
	setor varchar(50),
	encargo varchar(200),
	PRIMARY KEY (registro_depart)
);


INSERT INTO tb_departamento (registro_depart,nome,setor,encargo) VALUES
(21001,'Bruno Alencar','Financeiro','Diretor Financeiro'),
(21002,'Clarice Gonçalves','Financeiro','Gerente Financeiro'),
(21003,'Thiago Furtado','Financeiro','Analista Financeiro'),
(21004,'Carla Bustino','Financeiro','Analista Financeiro'),
(22001,'Thomaz Duarte','Academico','Diretor e Supervisor'),
(22002,'Mariana ALves','Academico','Coordenadora'),
(22003,'Alice Carvalho','Academico','Assistente Escolar'),
(23001,'Carla Ruilova Rodriguez','Pedagógico','Facil Soft'),
(23002,'Bruna Murilla','Pedagógico','Facil Tech'),
(23003,'Leticia Casagrande Rodrigues','Pedagógico','Facil Tech'),
(23004,'Larissa Ruza','Pedagógico','Facil Soft'),
(23005,'Frederico Farrokh Bulsara','Pedagógico','Facil Tech'),
(23006,'Thais Delcaro','Pedagógico','Facil Tech');

select * from tb_departamento;

CREATE TABLE tb_turmas(
	codigo_turma varchar(3) NULL,
	nome varchar(50) NULL,
	facilitador_soft varchar(50) NULL,
	facilitador_tech varchar(50) NULL,
	periodo varchar(50) NULL,
	PRIMARY KEY(codigo_turma)	
	);


INSERT INTO tb_turmas(nome,codigo_turma,facilitador_soft,facilitador_tech,periodo) VALUES
('Webdev','T10','Carla Ruilova Rodriguez','Bruna Murilla
','Vespertino'),
('Webdev','T11','Larissa Ruza','Frederico Farrokh Bulsara
','Vespertino'),
('Data Analytics','T12','Larissa Ruza','Thais Delcaro
','Noturno'),
('Data Analytics','T13','Carla Ruilova Rodriguez','Leticia Casagrande Rodrigues
','Noturno');

SELECT * FROM tb_turmas;

/*arquivo2*/



select * from tb_aluno;
select * from tb_departamento;
select * from tb_facilitadores;
select * from tb_turmas;


/* Inseri um aluno que faltava*/
insert into tb_aluno (nome,email,cpf,sexo,turma,idade) values
('Luiz Fonsi','luizconchita@hotmail.es','00123443289','M','T11',19);

/* Inseri uma coluna chamada Modulo na tabela Turmas, e povoei ela*/
alter table tb_turmas add modulo_atual varchar(10);
update tb_turmas set modulo_atual = 'Modulo 6 ' where codigo_turma = 'T10';
update tb_turmas set modulo_atual = 'Modulo 5 ' where codigo_turma = 'T11';
update tb_turmas set modulo_atual = 'Modulo 3 ' where codigo_turma = 'T12';
update tb_turmas set modulo_atual = 'Modulo 1 ' where codigo_turma = 'T13';
select * from tb_turmas;

alter table tb_departamento rename registro_depart TO registro;





/* Respondendo as perguntas*/

/* Quantidade Total de estudantes Cadastrados*/
select 'Total de Alunos', count(*) from tb_aluno;

/* Estudantes com seus respectivos Cursos*/
select nome,turma  from tb_aluno;

/*Pessoas facilitadoras que atuam em mais de uma turma*/
select facilitador_soft, count(*) as quantidade_de_turmas from tb_turmas group by facilitador_soft
union
select facilitador_tech, count(*) as quantidade_de_turmas from tb_turmas 
group by facilitador_tech 
having count(*)>=2;

--Quais funcionarios não sao facilitadores
select x.nome,especialidades from tb_departamento x
left join tb_facilitadores y
on x.registro = y.registro
where especialidades  is  null;

-- Quantas mulheres estudam no periodo noturno
select x.nome,periodo,sexo from tb_aluno x
left join tb_turmas y 
on x.turma = y.codigo_turma
where periodo = 'Noturno' and sexo = 'F';

--Quantos alunos da facilitadora Carla Ruilova Rodriguez são mulheres e estudam no periodo verpertino. Ordenado por ordem alfabetica
select x.nome,z.nome,periodo,sexo from tb_aluno x
inner join tb_turmas y
on x.turma = y.codigo_turma
inner join tb_facilitadores z
on y.facilitador_soft = z.nome
where facilitador_soft = 'Carla Ruilova Rodriguez'
and periodo = 'Vespertino'
and sexo = 'F'
order by x.nome;

-- Qual a media de idade dos periodos Noturno e Vespertino ordenado da maior para menor media
select periodo, round(avg(idade),1) as Media_idade from tb_aluno x
inner join tb_turmas y
on x.turma = y.codigo_turma
group by periodo
order by media_idade desc;

--Quais facilitadores tem especilade em Python e/ou Matblab
select Nome,especialidades from tb_facilitadores
where especialidades Ilike '%Python%'
or especialidades Ilike '%Matlab%'













