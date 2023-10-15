create database empresa;
use empresa;

create table funcionarios(
	matricula int auto_increment,
    Pnome varchar(20) not null,
    Snome varchar(20) not null,
    nasc date,
    sexo char,
    endereço varchar(50),
    Salario decimal(10.2) not null,
    setor int,
    gerente int,
    primary key (matricula)
	);
    
select * from funcionarios;

insert into funcionarios values(null, 'João', 'Silva', '1990-05-15', 'M', 'Rua Principal 123', 5000.00, null, null),
(null, 'Maria', 'Santos', '1985-08-20', 'F', 'Avenida Secundária 456', 6000.00, null, null),
(null, 'Carlos', 'Ferreira', '1992-03-10', 'M', 'Estrada Secundária 789', 5500.00, null, null),
(null, 'Ana', 'Oliveira', '1998-01-25', 'F', 'Rua Central 567', 5200.00, null, null),
(null, 'Paulo', 'Ribeiro', '1995-07-12', 'M', 'Avenida Principal 789', 5800.00, null, null),
(null, 'Marta', 'Gomes', '1989-11-30', 'F', 'Estrada Central 234', 5300.00, null, null),
(null, 'Luís', 'Rodrigues', '1991-09-08', 'M', 'Rua Secundária 987', 5900.00, null, null),
(null, 'Sofia', 'Fernandes', '1987-04-17', 'F', 'Avenida Norte 654', 5400.00, null, null),
(null, 'Ricardo', 'Costa', '1993-02-03', 'M', 'Estrada Sul 321', 5600.00, null, null),
(null, 'Isabel', 'Martins', '1996-06-05', 'F', 'Rua Oeste 222', 5500.00, null, null),
(null, 'Fernando', 'Mendes', '1988-10-11', 'M', 'Avenida Leste 111', 5700.00, null, null),
(null, 'Carla', 'Pereira', '1990-12-28', 'F', 'Estrada Norte 333', 5900.00, null, null),
(null, 'José', 'Alves', '1986-03-07', 'M', 'Rua Sul 444', 5800.00, null, null),
(null, 'Teresa', 'Ferreira', '1991-01-16', 'F', 'Avenida Oeste 555', 5700.00, null, null),
(null, 'Manuel', 'Sousa', '1989-08-29', 'M', 'Estrada Leste 666', 5500.00, null, null),
(null, 'Catarina', 'Oliveira', '1994-05-21', 'F', 'Rua Principal 777', 5400.00, null, null),
(null, 'Paulo', 'Santos', '1997-03-12', 'M', 'Avenida Secundária 888', 5600.00, null, null),
(null, 'Ana', 'Silveira', '1993-09-08', 'F', 'Estrada Central 999', 5800.00, null, null);

select salario, count(*) as 'Quantidade' from funcionarios
group by salario
having salario > 5600
order by salario desc;


create table setor(
	Snum int auto_increment,
    nome varchar(15) not null unique,
    gerente_resp int,
    data_incio date,
    primary key (Snum),
    foreign key (gerente_resp) references funcionarios(matricula)
    );
    
    
insert into setor values(null, 'Administrativo', null, '2023-10-16'),
						(null, 'RH', null, '2023-10-16'),
						(null, 'Operacional', null, '2023-10-16');
                        
select * from setor;



create table dependente(
	dpt_num int,
    nome varchar(15),
    sexo char,
    nasc date,
    grau varchar(15),
    primary key(dpt_num),
    foreign key (dpt_num) references funcionarios(matricula)
	);
show tables;
    