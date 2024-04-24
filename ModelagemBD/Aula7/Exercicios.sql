--AULA 07
--Ex01
select unidade as "Fatec", 
	count (*) as "Quantidade" from tbcurso 
	group by unidade order by unidade asc;

--Ex02
select unidade as "Fatec", 
	count (*) as "Quantidade" from tbcurso 
	group by unidade order by count(*) desc;

--Ex03
select unidade as "Fatec", 
	count (*) as "Quantidade" from tbcurso 
	group by unidade order by count(*) desc
	limit 1;

--Ex04
select unidade as "Fatec", 
	count (*) as "Quantidade" from tbcurso 
	group by unidade order by count(*) desc
	limit 1
	offset 1;

--Ex05
select unidade as "Fatec", 
	count (*) as "Quantidade" from tbcurso 
	group by unidade
	having count(*) = 3
	order by unidade asc;

--Ex06
select unidade as "Fatec", turno,
	count (*) as "Qauntidade"
	from tbcurso
	group by unidade, turno
	order by unidade asc;

--Ex07
select unidade as "Fatec", turno,
	count (*) as "Qauntidade"
	from tbcurso
	group by unidade, turno
	having count(*) = 5
	order by unidade asc;

--Ex08
select unidade as "Fatec", turno,
	count (*) as "Qauntidade"
	from tbcurso
	where unidade = 'Fatec São José dos Campos - Prof. Jessen Vidal'
	group by unidade, turno
	order by turno asc;

--Ex09
select unidade as "Fatec", turno,
	sum (vaga) as "Qauntidade"
	from tbcurso
	where unidade = 'Fatec São José dos Campos - Prof. Jessen Vidal'
	group by unidade, turno
	order by turno asc;

--Ex10
select turno, sum(vaga) from tbcurso
	group by turno
	order by turno asc;