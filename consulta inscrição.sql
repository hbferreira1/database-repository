--Olá, professor, este BD irá consultar o pagamento da inscrição de uma pessoa em um concurso.

--Criação do banco  dados

CREATE DATABASE  IF NOT EXISTS concurso 
DEFAULT CHARACTER SET utf8;

--Criação das tabelas
CREATE TABLE IF NOT EXISTS inscricao 
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY
	nome VARCHAR(100) NOT NULL DEFAULT,

	cpf NUMERIC(10) NOT NULL,

	nascimento DATE(10) NOT NULL,

	confirmacao_pagamento ENUM ('Não', 'Sim') NOT NULL DEFAULT 'Não'

--Inserção dos dados

	INSERT INTO inscricao (nome, cpf, nascimento, confirmacao_pagamento )
	VALUES ('Hugo Barreto Ferreira', '1223334444', '12-09-2000', 'Não')
		   ('José da Silva Coelho', '5555566666', '03-05-1998', 'Sim')
		   ('Gabriela Araujo Dias', '6777777888', '28-12-1999', 'Sim')
		   ('Amanda Nunes Costa', '8888899999', '15-11-2001', 'Não')

	UPDATE inscricao SET confirmacao_pagamento = 'Sim' ;

--Consulta

SELECT * FROM inscricao 
WHERE confirmacao_pagamento='Sim';