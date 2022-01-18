
INSERT INTO tb_modulos (id_modulo,nome)
VALUES
	('M1','MODULO 1'),
	('M2','MODULO 2'),
	('M3','MODULO 3'),
	('M4','MODULO 4'),
	('M5','MODULO 5'),
	('M6','MODULO 6');

INSERT INTO tb_cursos (id_curso,nome)
VALUES
	('1','Webdev'),
	('2','Data Analytics'),
	('3','Microcontroladores');



INSERT INTO tb_departamentos (id_departamento,nome) 
VALUES
	('1','Docencia'),
	('2','Financeiro'),
	('3','Juridico'),
	('4','Recursos Humanos'),
	('5','Administracao'),
	('6','Marketing');


INSERT INTO tb_funcionarios (id_funcionario,id_departamento,nome,especialidades) 
VALUES
	(23001,'1', 'Carla Ruilova Rodriguez','comunicacao nao violenta, pscicologia corporativa,linguas estrangeiras'),
	(23002,'1','Bruna Murilla', 'matematica aplicada,algebra lienar, Matlab'),
	(23003,'1','Leticia Casagrande Rodrigues','Java,C++,Cobol,Python'),
	(23004,'1','Larissa Ruza','Recrutamento,terapia do esquema'),
	(23005,'1','Frederico Farrokh Bulsara','Python,JavaScript,CSS,HTML,C#'),
	(23006,'1','Thais Delcaro','SQL,R,Python,C,C++,assembly,regressões,calculo numerico,equacoes diferenciais'),
	(21001,'2','Bruno Alencar','Diretor Financeiro'),
	(21002,'2','Clarice Gonçalves','Gerente Financeiro'),
	(21003,'3','Thiago Furtado','Advocacia geral'),
	(21004,'4','Carla Bustino','Contabilidade federal'),
	(22001,'5','Thomaz Duarte','Diretor e Supervisor'),
	(22002,'5','Mariana ALves','Coordenadora'),
	(22003,'6','Alice Carvalho','Marketing Digital');

INSERT INTO tb_turmas(codigo_turma,id_curso,id_modulo,id_facilitador_soft,id_facilitador_tech,periodo,data_inicio,data_fim) 
VALUES
	('T10','1','M6','23001','23002','Vespertino','2021-01-01','2021-07-01'),
	('T11','2','M5','23004','23005','Vespertino','2021-02-01','2021-08-01'),
	('T12','1','M3','23004','23006','Noturno','2021-03-01','2021-09-01'),
	('T13','2','M1','23001','23003','Noturno','2021-04-01','2021-10-01');

INSERT INTO tb_alunos (nome,email,cpf,sexo,codigo_turma,idade) 
VALUES
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
	('Tancredo Neves','tancredoneves@gmail.com','32156700098','M', 'T13', 70),
	('Luiz Fonsi','luizconchita@hotmail.es','00123443289','M','T11',19);