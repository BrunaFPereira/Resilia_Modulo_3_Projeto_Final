


select * from tb_alunos;
select * from tb_departamentos;
select * from tb_funcionarios;
select * from tb_turmas;
SELECT * FROM tb_modulos;
SELECT * FROM tb_cursos;



/* Respondendo as perguntas*/

-- Quantidade Total de estudantes Cadastrados
select 'Total de Alunos', count(*) from tb_alunos;

-- Estudantes com seus respectivos Cursos
select a.nome,c.nome  from tb_alunos a 
inner join tb_turmas b
on a.codigo_turma = b.codigo_turma
inner join tb_cursos c
on b.id_curso = c.id_curso
order by a.nome;

-- Pessoas facilitadoras que atuam em mais de uma turma*/
select a.nome, count(*) as total_de_turmas from tb_funcionarios a 
inner join tb_turmas b
on a.id_funcionario = b.id_facilitador_soft
group by a.nome having count(*) >=2
union
select a.nome, count(*) as total_de_turmas from tb_funcionarios a 
inner join tb_turmas b
on a.id_funcionario = b.id_facilitador_tech
group by a.nome having count(*) >=2;

-------------------------------------------------------------------------------------------------------------------------------------------

-- Quantas mulheres estudam no periodo noturno
select x.nome,periodo,sexo from tb_alunos x
inner join tb_turmas y 
on x.codigo_turma = y.codigo_turma
where periodo = 'Noturno' and sexo = 'F';

	-- contagem
    select 'Total de mulheres perido noturno',count(*) as Total from tb_alunos x
	inner join tb_turmas y 
	on x.codigo_turma = y.codigo_turma
	where periodo = 'Noturno' and sexo = 'F';


-- mostre os alunos  da facilitadora Carla Ruilova Rodriguez  que são mulheres e estudam no periodo verpertino. Ordenado por ordem alfabetica
select a.nome, sexo, periodo from tb_alunos a
inner join tb_turmas b
on a.codigo_turma = b.codigo_turma
where sexo = 'F' and periodo = 'Vespertino'
and id_facilitador_soft = (select id_funcionario from tb_funcionarios where nome = 'Carla Ruilova Rodriguez')
order by a.nome;


-- Qual a media de idade dos periodos Noturno e Vespertino ordenado da maior para menor media
select periodo , round(avg(idade),1) as Media_idade from tb_alunos x
inner join tb_turmas y
on x.codigo_turma = y.codigo_turma
group by periodo
order by media_idade desc;

-- Quais facilitadores tem especilade em Python e/ou Matblab
select Nome,especialidades from tb_funcionarios
where especialidades like '%Python%'
or especialidades like '%Matlab%';

-- Quais cursos não estao com turmas no momento
select b.nome,a.codigo_turma from tb_turmas a
right join tb_cursos b
on a.id_curso = b.id_curso
where codigo_turma is null
 

