CREATE TABLE DEPARTAMENTO (

 
ID_DEPARTAMENTO INT PRIMARY KEY,

 
NM_DEPARTAMENTO VARCHAR(50) NOT NULL

 
);

 


 
CREATE TABLE CARGO (

 
ID_CARGO INT PRIMARY KEY,

 
DS_CARGO VARCHAR(50) NOT NULL

 
);

 


 
CREATE TABLE FUNCIONARIO (

 
ID_FUNCIONARIO INT PRIMARY KEY,

 
NM_FUNCIONARIO VARCHAR(100) NOT NULL,

 
DT_ADMISSAO DATE NOT NULL,

 
SALARIO_BASE DECIMAL(10, 2) NOT NULL,

 
ID_DEPARTAMENTO INT,

 
ID_CARGO INT,

 
FOREIGN KEY (ID_DEPARTAMENTO) REFERENCES DEPARTAMENTO(ID_DEPARTAMENTO),

 
FOREIGN KEY (ID_CARGO) REFERENCES CARGO(ID_CARGO)

 
);

 


 
CREATE TABLE PAGAMENTO (

 
DT_PAGAMENTO DATE,

 
ID_FUNCIONARIO INT,

 
ID_PAGAMENTO INT,

 
VL_PAGAMENTO DECIMAL(10, 2) NOT NULL,

 
PRIMARY KEY (DT_PAGAMENTO, ID_FUNCIONARIO, ID_PAGAMENTO),

 
FOREIGN KEY (ID_FUNCIONARIO) REFERENCES FUNCIONARIO(ID_FUNCIONARIO)

 
);

 


 
CREATE TABLE AUDIT_SALARIO (

 
ID_AUDIT INT PRIMARY KEY,

 
ID_FUNCIONARIO INT NOT NULL,

 
DT_MODIFICACAO DATE NOT NULL,

 
SALARIO_ANTIGO DECIMAL(10, 2) NOT NULL,

 
SALARIO_NOVO DECIMAL(10, 2) NOT NULL,

 
MOTIVO VARCHAR(50),

 
FOREIGN KEY (ID_FUNCIONARIO) REFERENCES FUNCIONARIO(ID_FUNCIONARIO)

 
);

 


 
CREATE TABLE PROJETO (

 
ID_PROJETO INT PRIMARY KEY,

 
NM_PROJETO VARCHAR(50) NOT NULL,

 
DT_INICIO DATE NOT NULL,

 
DT_FIM DATE

 
);

 


 
CREATE TABLE FUNCIONARIO_PROJETO (

 
ID_FUNCIONARIO INT,

 
ID_PROJETO INT,

 
DT_INI_PART DATE NOT NULL,

 
DT_FIM_PART DATE,

 
PRIMARY KEY (ID_FUNCIONARIO, ID_PROJETO),

 
FOREIGN KEY (ID_FUNCIONARIO) REFERENCES FUNCIONARIO(ID_FUNCIONARIO),

 
FOREIGN KEY (ID_PROJETO) REFERENCES PROJETO(ID_PROJETO)

 
);



 insert into DEPARTAMENTO (ID_DEPARTAMENTO, NM_DEPARTAMENTO) VALUES

(1, 'TI'),

(2, 'RH'),

(3, 'Financeiro');

-- Carga para a tabela CARGO

insert into CARGO (ID_CARGO, DS_CARGO) VALUES

(1, 'Analista de Sistemas'),

(2, 'Desenvolvedor'),

(3, 'Gerente de Projetos'),

(4, 'Líder de produto'),

(5, 'Estagiário'),

(6, 'Dba');

-- Carga para a tabela PROJETO

insert into PROJETO (ID_PROJETO, NM_PROJETO, DT_INICIO, DT_FIM) VALUES

(1, 'Sistema de Gestão', '2022-01-01', '2022-12-31'),

(2, 'Plataforma E-commerce', '2023-01-01', NULL),

(3, 'App Mobile', '2023-06-01', NULL),

(4, 'Projeto Reestruturação', '2023-03-01', '2023-12-31'),

(5, 'Projeto Automação', '2023-04-15', NULL),

(6, 'Projeto Integração', '2023-06-15', '2024-02-28'),

(7, 'Projeto Expansão', '2023-05-10', NULL),

(8, 'Projeto Melhoria Contínua', '2024-01-01', NULL),

(9, 'Projeto Segurança Digital', '2023-07-20', '2024-09-15'),

(10, 'Projeto Inovação', '2024-02-10', NULL);

-- Carga para a tabela FUNCIONARIO

insert into FUNCIONARIO (ID_FUNCIONARIO, NM_FUNCIONARIO, DT_ADMISSAO, SALARIO_BASE, ID_DEPARTAMENTO, ID_CARGO) VALUES

(1, 'Carlos Silva', '2022-01-15', 5000.00, 1, 1),

(2, 'Maria Souza', '2023-02-01', 6000.00, 1, 2),

(3, 'João Pereira', '2021-07-23', 7000.00, 3, 3),

(4, 'Ana Martins', '2022-03-01', 4800.00, 1, 1),

(5, 'Pedro Almeida', '2022-04-15', 5200.00, 1, 2),

(6, 'Lucas Rocha', '2023-01-05', 5400.00, 1, 2),

(7, 'Isabela Nunes', '2022-05-20', 5800.00, 2, 3),

(8, 'Fernando Gomes', '2021-11-11', 6000.00, 2, 1),

(9, 'Bruna Lima', '2022-09-23', 6100.00, 3, 2),

(10, 'Gabriel Santos', '2021-10-10', 4700.00, 1, 1),

(11, 'Julia Ramos', '2023-03-05', 4500.00, 3, 2),

(12, 'Mateus Costa', '2021-08-01', 4900.00, 1, 3),

(13, 'Beatriz Souza', '2022-02-20', 5000.00, 2, 1),

(14, 'Rafael Lopes', '2023-04-10', 5300.00, 3, 1),

(15, 'Amanda Ferreira', '2023-06-12', 6000.00, 1, 3),

(16, 'Renato Barros', '2022-10-02', 5600.00, 2, 2),

(17, 'Camila Vieira', '2023-01-15', 4900.00, 2, 3),

(18, 'Thiago Oliveira', '2021-07-18', 5200.00, 1, 1),

(19, 'Mariana Dias', '2022-11-30', 6100.00, 3, 1),

(20, 'Felipe Castro', '2023-08-14', 5400.00, 2, 2),

(21, 'Sofia Cardoso', '2022-07-27', 5700.00, 3, 3),

(22, 'Daniel Moraes', '2023-05-20', 6000.00, 1, 1),

(23, 'Sara Silva', '2021-06-01', 5000.00, 3, 2),

(24, 'Leandro Ribeiro', '2023-02-10', 6200.00, 2, 2),

(25, 'Fernanda Melo', '2022-01-23', 6300.00, 1, 3),

(26, 'Rodrigo Teixeira', '2023-06-18', 5400.00, 2, 1),

(27, 'Lara Cruz', '2022-09-10', 5100.00, 1, 2),

(28, 'Vinícius Torres', '2021-12-15', 6000.00, 3, 2),

(29, 'Paula Correia', '2023-01-03', 5900.00, 2, 1),

(30, 'Henrique Martins', '2022-04-22', 5000.00, 3, 1),

(31, 'Larissa Carvalho', '2023-08-21', 5500.00, 1, 3),

(32, 'Victor Moreira', '2022-07-14', 4700.00, 1, 2),

(33, 'Marcela Neves', '2021-09-06', 6200.00, 2, 3),

(34, 'Eduardo Araújo', '2022-10-18', 6300.00, 1, 1),

(35, 'Patrícia Figueiredo', '2023-03-22', 5900.00, 2, 3),

(36, 'Bruno Ribeiro', '2022-05-13', 6100.00, 3, 1),

(37, 'Alice Matos', '2021-11-01', 5600.00, 1, 2),

(38, 'Diego Batista', '2023-06-11', 5200.00, 2, 2),

(39, 'Nathalia Alves', '2022-08-05', 5000.00, 3, 1),

(40, 'Ricardo Nascimento', '2023-04-25', 5700.00, 1, 2),

(41, 'Luana Santana', '2021-07-09', 5900.00, 3, 3),

(42, 'André Silva', '2022-01-27', 5800.00, 2, 1),

(43, 'Clara Barros', '2023-05-06', 6200.00, 1, 3),

(44, 'Fábio Rodrigues', '2022-09-19', 6300.00, 3, 1),

(45, 'Vanessa Oliveira', '2023-07-24', 5400.00, 2, 2),

(46, 'Ruan Cavalcanti', '2021-10-17', 6000.00, 1, 1),

(47, 'Daiane Gomes', '2022-02-14', 6100.00, 3, 3),

(48, 'Alan Franco', '2023-06-05', 6200.00, 1, 2),

(49, 'Tatiana Duarte', '2022-11-07', 5700.00, 2, 1),

(50, 'Maurício Carvalho', '2021-08-12', 5800.00, 3, 2),

(51, 'Priscila Brito', '2022-05-29', 6000.00, 1, 3),

(52, 'Leonardo Lima', '2023-01-21', 6300.00, 2, 1),

(53, 'Elaine Ferreira', '2023-07-15', 6200.00, 1, 3),

(54, 'Murilo Sousa', '2022-06-18', 6100.00, 2, 2),

(55, 'Raquel Azevedo', '2021-09-29', 5800.00, 3, 1),

(56, 'Hugo Medeiros', '2022-08-13', 5000.00, 1, 2),

(57, 'Natália Guedes', '2023-05-31', 6100.00, 3, 2),

(58, 'Anderson Silva', '2022-03-18', 5900.00, 2, 3),

(59, 'Letícia Mota', '2021-11-25', 6000.00, 1, 1),

(60, 'Joana Pinto', '2023-06-28', 5700.00, 2, 2),

(61, 'Felipe Araujo', '2022-01-30', 6200.00, 3, 3),

(62, 'Luiz Amaral', '2023-07-19', 6300.00, 2, 1),

(63, 'Marta Vieira', '2021-08-16', 6100.00, 1, 3),

(64, 'Fernando Lima', '2023-05-01', 2900.00, NULL, NULL),

(65, 'Patrícia Almeida', '2023-05-10', 3100.00, 1, NULL),

(66, 'Ricardo Mendes', '2023-05-15', 3200.00, NULL, 2),

(67, 'Fernanda Oliveira', '2023-05-20', 3400.00, 2, 3),

(68, 'Juliano Costa', '2023-06-01', 2800.00, 3, NULL),

(69, 'Sofia Santos', '2023-06-10', 3000.00, NULL, NULL),

(70, 'Lucas Rocha', '2023-06-15', 2950.00, 1, 2),

(71, 'Amanda Torres', '2023-06-20', 3100.00, NULL, 3),

(72, 'Tiago Silva', '2023-06-25', 3300.00, 2, NULL),

(73, 'Gustavo Pereira', '2023-07-01', 3500.00, 3, 1),

(74, 'Juliana Lima', '2023-07-10', 3000.00, NULL, NULL),

(75, 'Marcos Dias', '2023-07-15', 2800.00, 1, NULL),

(76, 'Cláudia Martins', '2023-07-20', 3100.00, NULL, 2),

(77, 'Renato Gomes', '2023-07-25', 3400.00, NULL, NULL),

(78, 'Bianca Ferreira', '2023-08-01', 3200.00, 2, 3),

(79, 'Roberto Alves', '2023-08-05', 2900.00, 3, NULL),

(80, 'Lívia Mendes', '2023-08-10', 3300.00, NULL, NULL),

(81, 'Henrique Costa', '2023-08-15', 3100.00, 1, 2),

(82, 'Tatiane Soares', '2023-08-20', 3000.00, NULL, 3),

(83, 'Eduardo Santos', '2023-08-25', 3400.00, 2, NULL),

(84, 'Karla Lima', '2023-09-01', 2950.00, NULL, NULL);

-- Carga para a tabela associativa

insert INTO FUNCIONARIO_PROJETO (ID_FUNCIONARIO, ID_PROJETO, DT_INI_PART, DT_FIM_PART) VALUES

(1, 1, '2022-01-15', '2022-12-31'),

(2, 2, '2023-02-01', NULL),

(3, 3, '2023-06-01', NULL);

-- Carga para a tabela AUDIT_SALARIO

insert INTO AUDIT_SALARIO (ID_AUDIT, ID_FUNCIONARIO, DT_MODIFICACAO, SALARIO_ANTIGO, SALARIO_NOVO, MOTIVO) VALUES

(1, 1, '2023-01-01', 4500.00, 5000.00, 'Promoção'),

(2, 2, '2023-03-01', 5500.00, 6000.00, 'Ajuste salarial'),

(3, 3, '2022-12-01', 6500.00, 7000.00, 'Revisão anual');

-- Carga para a tabela PAGAMENTO

insert INTO PAGAMENTO (DT_PAGAMENTO, ID_FUNCIONARIO, ID_PAGAMENTO, VL_PAGAMENTO) VALUES

('2024-02-28', 2, 186, 9100.00),

('2024-02-28', 3, 187, 10000.00),

('2024-01-31', 1, 101, 5000.00),

('2024-01-31', 2, 102, 6000.00),

('2024-01-31', 3, 103, 7000.00),

('2024-02-01', 1, 104, 5200.00),

('2024-02-01', 2, 105, 6300.00),

('2024-02-01', 3, 106, 7400.00),

('2024-02-02', 1, 107, 5100.00),

('2024-02-02', 2, 108, 6200.00),

('2024-02-02', 3, 109, 7300.00),

('2024-02-03', 1, 110, 5500.00),

('2024-02-03', 2, 111, 6400.00),

('2024-02-03', 3, 112, 7500.00),

('2024-02-04', 1, 113, 5600.00),

('2024-02-04', 2, 114, 6700.00),

('2024-02-04', 3, 115, 7600.00),

('2024-02-05', 1, 116, 5800.00),

('2024-02-05', 2, 117, 6800.00),

('2024-02-05', 3, 118, 7700.00),

('2024-02-06', 1, 119, 5900.00),

('2024-02-06', 2, 120, 6900.00),

('2024-02-06', 3, 121, 7800.00),

('2024-02-07', 1, 122, 6000.00),

('2024-02-07', 2, 123, 7000.00),

('2024-02-07', 3, 124, 7900.00),

('2024-02-08', 1, 125, 6100.00),

('2024-02-08', 2, 126, 7100.00),

('2024-02-08', 3, 127, 8000.00),

('2024-02-09', 1, 128, 6200.00),

('2024-02-09', 2, 129, 7200.00),

('2024-02-09', 3, 130, 8100.00),

('2024-02-10', 1, 131, 6300.00),

('2024-02-10', 2, 132, 7300.00),

('2024-02-10', 3, 133, 8200.00),

('2024-02-11', 1, 134, 6400.00),

('2024-02-11', 2, 135, 7400.00),

('2024-02-11', 3, 136, 8300.00),

('2024-02-12', 1, 137, 6500.00),

('2024-02-12', 2, 138, 7500.00),

('2024-02-12', 3, 139, 8400.00),

('2024-02-13', 1, 140, 6600.00),

('2024-02-13', 2, 141, 7600.00),

('2024-02-13', 3, 142, 8500.00),

('2024-02-14', 1, 143, 6700.00),

('2024-02-14', 2, 144, 7700.00),

('2024-02-14', 3, 145, 8600.00),

('2024-02-15', 1, 146, 6800.00),

('2024-02-15', 2, 147, 7800.00),

('2024-02-15', 3, 148, 8700.00),

('2024-02-16', 1, 149, 6900.00),

('2024-02-16', 2, 150, 7900.00),

('2024-02-16', 3, 151, 8800.00),

('2024-02-17', 1, 152, 7000.00),

('2024-02-17', 2, 153, 8000.00),

('2024-02-17', 3, 154, 8900.00),

('2024-02-18', 1, 155, 7100.00),

('2024-02-18', 2, 156, 8100.00),

('2024-02-18', 3, 157, 9000.00),

('2024-02-19', 1, 158, 7200.00),

('2024-02-19', 2, 159, 8200.00),

('2024-02-19', 3, 160, 9100.00),

('2024-02-20', 1, 161, 7300.00),

('2024-02-20', 2, 162, 8300.00),

('2024-02-20', 3, 163, 9200.00),

('2024-02-21', 1, 164, 7400.00),

('2024-02-21', 2, 165, 8400.00),

('2024-02-21', 3, 166, 9300.00),

('2024-02-22', 1, 167, 7500.00),

('2024-02-22', 2, 168, 8500.00),

('2024-02-22', 3, 169, 9400.00),

('2024-02-23', 1, 170, 7600.00),

('2024-02-23', 2, 171, 8600.00),

('2024-02-23', 3, 172, 9500.00),

('2024-02-24', 1, 173, 7700.00),

('2024-02-24', 2, 174, 8700.00),

('2024-02-24', 3, 175, 9600.00),

('2024-02-25', 1, 176, 7800.00),

('2024-02-25', 2, 177, 8800.00),

('2024-02-25', 3, 178, 9700.00),

('2024-02-26', 1, 179, 7900.00),

('2024-02-26', 2, 180, 8900.00),

('2024-02-26', 3, 181, 9800.00),

('2024-02-27', 1, 182, 8000.00),

('2024-02-27', 2, 183, 9000.00),

('2024-02-27', 3, 184, 9900.00),

('2024-02-28', 1, 185, 8100.00);

select * from funcionario f
inner join departamento d on(f.ID_DEPARTAMENTO = d.ID_DEPARTAMENTO);


select * from funcionario f where f.ID_DEPARTAMENTO is null;

select ID_FUNCIONARIO from funcionario f;
select NM_DEPARTAMENTO, ID_DEPARTAMENTO from departamento d;


select * from funcionario f
left join cargo c on (f.ID_CARGO = c.ID_CARGO)
where f.ID_CARGO =2;

select * from funcionario f ;

select * from funcionario f 
right join cargo c on(f.ID_CARGO= c.ID_CARGO);

