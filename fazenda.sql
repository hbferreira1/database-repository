CREATE DATABASE fazenda
	DEFAULT CHARACTER SET utf8;
	USE fazenda;

CREATE TABLE  funcionarios(
        id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        nome VARCHAR(50) NOT NULL,
        cpf NUMERIC(11) NOT NULL,
        salario INT(10) NOT NULL
        );
        
CREATE TABLE prod_leite (
		identificacao INT(3) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        especie VARCHAR(20) NOT NULL,
        ultima_ordenha DATE,
        prod_por_quarto INT(10) NOT NULL
        );
        
CREATE TABLE produtos (
		id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        nome VARCHAR(50) NOT NULL,
        tipo VARCHAR(20) NOT NULL,
        qtd_estoque INT(10) NOT NULL,
        preco INT(10) NOT NULL
        );
        
CREATE TABLE equipamentos (
		id int(11)NOT NULL AUTO_INCREMENT PRIMARY KEY,
        nome VARCHAR(50) NOT NULL,
        tipo VARCHAR(20) NOT NULL
		);
        
CREATE TABLE varejistas (
		varej VARCHAR(20) NOT NULL,
        qtd_varej INT(20) NOT NULL
        );
        
 INSERT INTO funcionarios (nome, cpf, salario) 
 VALUES ('Fábio', '12233344445', '1200'),
		('Rogério', '55556666667', '1250'),
        ('Carlos','77777788888','1300')
        ;
        
INSERT INTO prod_leite (especie, ultima_ordenha, prod_por_quarto)
VALUES ('Vaca', '29/10/2020', '30'),
	   ('Cabra', '2/11/2020','22'),
       ('Búfala', '30/10/2020','35')
       ;
       
 INSERT INTO produtos (nome, tipo, qtd_estoque, preco)
 VALUES ('leite','integral','450','4'),
		('leite','desnatado','300','5'),
		('queijo','prato','50', '25'),
        ('queijo','minas','200', '22'),
        ('fruta','maçã','150','2'),
        ('fruta','pêra','250','4')
        ;
        
SELECT nome, salario FROM funcionarios
WHERE salario > 1200
ORDER BY nome
;

SELECT nome ,count(*) FROM produtos
INNER JOIN produtos.tipo
GROUP BY nome
;       