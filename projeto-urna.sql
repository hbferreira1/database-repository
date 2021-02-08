CREATE DATABASE IF NOT EXISTS urna
DEFAULT CHARACTER SET utf8;
USE urna;

	CREATE TABLE eleitor (
    nome VARCHAR(100) NOT NULL,
    cpf BIGINT(11) NOT NULL,
    tit_eleitor BigInt(12) NOT NULL PRIMARY KEY
    );
    
    CREATE TABLE IF NOT EXISTS cargo (
    cod_cargo INT(11) NOT NULL PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL
    );
    
	CREATE TABLE IF NOT EXISTS candidato (
    cod_candidato INT(11) NOT NULL PRIMARY KEY,
    nome_candidato VARCHAR(100) NOT NULL,
    cod_cargo BIGINT(11) NOT NULL,
    cod_partido BIGINT(11) NOT NULL,
    FOREIGN KEY (cod_cargo) REFERENCES cargo(cod_cargo)
    );
    
    
    CREATE TABLE IF NOT EXISTS partido (
    cod_partido INT(11) NOT NULL PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL
    );
    
    CREATE TABLE IF NOT EXISTS votacao (
    tit_eleitor DECIMAL(12,0) NOT NULL,
    cod_candidato DECIMAL(5,0) NOT NULL,
    FOREIGN KEY(tit_eleitor) REFERENCES eleitor(tit_eleitor),
    FOREIGN KEY (cod_candidato) REFERENCES candidato(cod_candidato)
    );
    
    INSERT INTO eleitor (nome, cpf, tit_eleitor)
    VALUES ('Hugo', '12233344445', '555566666677'),
		   ('Cleide', '486382746591', '274960483233'),
		   ('Bernardo' '586929173768', '456732123456'),
           ('Cláudia', '482749128394', '342167345687'),
           ('Alexandre', '456123654876', '012765234098'),
           ('Marcelo', '642790183284', '183087908123'),
           ('Alexandra', '275832098123', '172096296156'),
           ('Eloah', '123456789012', '345678901234');
 
INSERT INTO partido (cod_partido, descricao)
VALUES  (1,'APB'),
		(2,'Podemos'),
		(3,'Patriota'),
		(4,'PDT'),
		(5,'PSDB'),
		(6,'PSOL'),
		(7,'MDB'),
		(8,'Partido Novo'),
		(9,'PPL'),
		(10,'DC'),
		(11,'PT'),
		(12,'PCdoB'),
		(13,'PRTB'),
		(14,'PP'),
		(15,'PSC'),
		(16,'PV'),
		(17,'DEM'),
		(18,'PRP'),
		(19,'PSD'),
		(20,'PCO'),
		(21,'PSTU'),
		(22,'PSB'),
		(23,'PR'),
		(24,'SOLIDARIEDADE'),
		(25,'PSL'),
		(26,'AVANTE'),
		(27,'PMB');
 
 
INSERT INTO cargo (cod_cargo, descricao)
VALUES  (1,'Presidente'),
		(2,'Governador'),
		(3,'Deputado Federal'),
		(4,'Deputado Estadual'),
		(5,'Senador');
INSERT INTO candidato (cod_candidato, nome_candidato , cod_carg, cod_partido)
 VALUES (12,'Ciro Gomes',1,4),
		(13,'Marcia Tiburi',2,11),
		(14,'Pedro Fernandes',2,4),
		(15,'Henrique Meirelles',1,7),
		(16,'Dayse Oliveira',2,21),
		(17,'Jair Messias Bolsonaro',1,1),
		(18,'Romário',2,2),
		(19,'Fernando Haddad',1,11),
		(20,'Wilson Witzel',2,15),
		(25,'Eduardo Paes',2,17),
		(27,'José Maria Eymael',1,10),
		(28,'André Monteiro',2,13),
		(29,'Luiz Eugênio Honorato',2,20),
		(30,'João Amoêdo',1,8),
		(31,'Marcelo Trindade',2,8),
		(44,'Garotinho',2,18),
		(45,'Geraldo Alckmin',1,5),
		(50,'Guilherme Boulos',1,6),
		(51,'Cabo Daciolo',1,3),
		(52,'Tarcísio Motta',2,6),
		(54,'João Goulart Filho',1,9),
		(55,'Indio',2,19),
		(123,'Jose Bonifacio',5,4),
		(131,'Lindbergh',5,11),
		(161,'Cyro Cargia',5,21),
		(177,'Flávio Bolsonaro',5,25),
		(255,'Cesar Maia',5,17),
		(290,'Fernando Fagundes Ribeiro',5,20),
		(355,'Gabrielle Burcci',5,27),
		(455,'Aspasia',5,5),
		(500,'Chico Alencar',5,6),
		(555,'Arolde de Oliveira',5,19),
		(1155,'Christino Aureo',3,14),
		(1210,'Chico d Angelo',3,4),
		(1377,'Benedita da Silva',3,11),
		(1714,'Chris Tonietto',3,25),
		(1777,'Carlos Jordy',3,25),
		(2269,'Altineu Cortes',3,23),
		(4040,'Alessandro Molon',3,22),
		(5570,'Alexandre Serfiotis',3,19),
		(7070,'Chiquinho Brazão',3,26),
		(7733,'Aureo',3,24),
		(13567,'André Ceciliano',4,11),
		(17017,'Anderson Moraes',4,25),
		(17120,'Alana Passos',4,25),
		(17890,'Alexandre Knoploch',4,25),
		(19777,'Bebeto Terra',4,2),
		(25123,'André Corrêa',4,17),
		(25622,'Carlo Caiado',4,7),
		(30007,'Alexandre Freitas',4,8),
		(44888,'Bruno Dauaire',4,18),
		(77888,'Anderson Alexandre',4,24);
    
INSERT INTO votacao (tit_eleitor, cod_candidato)
VALUES (12233344445, 54),
       (123456789612, 15),
       (275832598123, 12),
       (456123654876, 17),
       (482749128604, 17),
       (486382746591, 51),
       (586929173768, 19),
       (642791832845, 27);