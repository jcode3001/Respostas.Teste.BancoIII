create DATABASE veiculos; 
use veiculos; 
create table carros (
id int primary key AUTO_INCREMENT ,
   modelo varchar (100) not null, 
    preco double (18,2) not null,
    ano year (4) not null,
    fabricante varchar (50) not null
);

insert into CARROS values (null, 'SIENA', 30.000, 2015, 'FIAT');
insert into CARROS values (null, 'PALIO', 22.900, 2012, 'FIAT');
insert into CARROS values (null, 'UNO', 7.800, 2000, 'FIAT');
insert into CARROS values (null, 'LOGAN', 12.990, 2011, 'RENAULT');
insert into CARROS values (null, 'CELTA', 13.990, 2009, 'CHEVROLET');
insert into CARROS values (null, 'FIESTA', 36.500, 2015, 'FORD');
insert into CARROS values (null, 'MERIVA', 25.900, 2012, 'CHEVROLET');
insert into CARROS values (null, 'DOBLO', 48.890, 2016, 'FIAT');
insert into CARROS values (null, 'ONIX', 39.800, 2017, 'CHEVROLET');
insert into CARROS values (null, 'CELTA', 19.490, 2012, 'CHEVROLET');
insert into CARROS values (null, 'KA', 15.920, 2012, 'FORD');
insert into CARROS values (null, 'FUSION', 79.990, 2016, 'FORD');
insert into CARROS values (null, 'ECOSPORT', 54.800, 2015, 'FORD');
insert into CARROS values (null, 'FLUENCE', 73.200, 2018, 'RENAULT');
insert into CARROS values (null, 'SANDERO', 31.900, 2013, 'RENAULT');
insert into CARROS values (null, 'COROLLA', 55.900, 2014, 'TOYOTA');
insert into CARROS values (null, 'ETIOS', 35.990, 2016, 'TOYOTA');
insert into CARROS values (null, 'HILUX', 162.000, 2017, 'TOYOTA');
insert into CARROS values (null, 'AGILE', 26.900, 2016, 'CHEVROLET');
insert into CARROS values (null, 'COBALT', 40.700, 2017, 'CHEVROLET');
insert into CARROS values (null, 'SIENA', 31.120, 2014, 'FIAT');
insert into CARROS values (null, 'PALIO', 16.890, 2008, 'FIAT');
insert into CARROS values (null, 'UNO', 20.900, 2011, 'FIAT');
insert into CARROS values (null, 'LOGAN', 18.899, 2010, 'RENAULT');
insert into CARROS values (null, 'FIESTA', 22.990, 2011, 'FORD');
insert into CARROS values (null, 'DOBLO', 35.850, 2010, 'FIAT');
insert into CARROS values (null, 'ONIX', 36.900, 2016, 'CHEVROLET');
insert into CARROS values (null, 'KA', 15.920, 2012, 'FORD');
insert into CARROS values (null, 'ECOSPORT', 20.500, 2014, 'FORD');
insert into CARROS values (null, 'FIORINO', 22.990, 2012, 'FIAT');
insert into CARROS values (null, 'SANDERO', 26.900, 2013, 'RENAULT');
insert into CARROS values (null, 'STRADA', 44.900, 2017, 'FIAT');
insert into CARROS values (null, 'ARGO', 58.900, 2018, 'FIAT');

select * from carros where preco BETWEEN 30.000 and 50.000;

select * from carros ORDER by preco desc limit 5;

select * from carros where fabricante = 'FIAT' and preco < 30.000;

select modelo from carros where ano >= 2015;

select preco from carros where preco > 30.000 and fabricante = 'chevrolet';

select preco, ano from carros where fabricante = 'Renault' ORDER by preco DESC limit 3;

update carros set preco = 14.000 where modelo = 'logan' and ano = 2011;

DELETE FROM carros WHERE modelo = 'FLUENCE' and ano = 2018;
