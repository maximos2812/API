
CREATE database prova ;

use prova;


create table tb_cliente (

id             int primary key auto_increment,
nm_cliente     varchar(100),
ds_email       varchar(100),
ds_telefone    varchar(100),
ds_cpf         varchar(100),
ds_cnh         varchar(100)

);


insert into tb_cliente (nm_cliente , ds_email ,ds_telefone , ds_cpf ,ds_cnh)
	  values('?' ,'?' ,'?' , '?' ,' ?');


select * 
from tb_cliente ;

select * 
from tb_cliente 
where nm_cliente = nm_cliente; 








CREATE database prova ;

use prova;


create table tb_cliente (

id             int primary key auto_increment,
nm_cliente     varchar(100),
ds_email       varchar(100),
ds_telefone    varchar(100),
ds_cpf         varchar(100),
ds_cnh         varchar(100)

);


insert into tb_cliente (nm_cliente , ds_email ,ds_telefone , ds_cpf ,ds_cnh)
	  values('?' ,'?' ,'?' , '?' ,' ?');


select * 
from tb_cliente ;

SELECT * 
FROM tb_cliente 
WHERE nm_cliente LIKE '%maxs%';



CREATE TABLE tb_tipo_veiculo (
    id_tipo_veiculo INT PRIMARY KEY AUTO_INCREMENT,
    ds_tipo_veiculo VARCHAR(1000)
);

CREATE TABLE TB_VEICULO (
    id              INT PRIMARY KEY AUTO_INCREMENT,
    id_tipo_veiculo INT,
    nm_modelo       VARCHAR(100),
    ds_marca        VARCHAR(100),
    ds_ano          DATE,
    ds_placa        VARCHAR(100),
    FOREIGN KEY (id_tipo_veiculo) REFERENCES tb_tipo_veiculo(id_tipo_veiculo)
);





INSERT INTO TB_VEICULO (id_tipo_veiculo ,nm_modelo, ds_marca, ds_ano, ds_placa)
			    VALUES ('2','esportiva', 'honda', '2013-01-01', 'AAA-345');


insert into tb_tipo_veiculo (ds_tipo_veiculo)
					 values ( 'carro');
                     


select *
from tb_tipo_veiculo;


select   	tb_tipo_veiculo.id_tipo_veiculo,
			tb_veiculo.id_tipo_veiculo,
            tb_veiculo.id, 
            tb_tipo_veiculo.ds_tipo_veiculo
            nm_modelo,
			ds_marca ,
			ds_ano  ,
            ds_placa
from tb_veiculo 
inner join tb_tipo_veiculo on  tb_veiculo.id_tipo_veiculo= tb_tipo_veiculo.id_tipo_veiculo;
 


SELECT 
    tb_tipo_veiculo.id_tipo_veiculo,
    tb_veiculo.id_tipo_veiculo,
    tb_veiculo.id, 
    tb_tipo_veiculo.ds_tipo_veiculo,
    tb_veiculo.nm_modelo,
    tb_veiculo.ds_marca,
    tb_veiculo.ds_ano,
    tb_veiculo.ds_placa
FROM tb_veiculo 
INNER JOIN tb_tipo_veiculo ON tb_veiculo.id_tipo_veiculo = tb_tipo_veiculo.id_tipo_veiculo
WHERE
    tb_veiculo.nm_modelo LIKE '%%'
    OR tb_veiculo.ds_marca LIKE '%tesla%'
    OR tb_veiculo.ds_placa LIKE '%123-abc%';
    
    
