/*TERMOS*/
BANCO   -- Principal parte, onde são criadas todas as tabelas
TABELA  -- Subparte do banco, onde cria-se os 'diagramas' de insersão de dados
COLUNA  -- Parte interna de uma Tabela, cada coluna sera dafinido um valor diferente à ser inserido
LINHA   -- É onde se vê os dados da tabela, fica na horizontal
VALORES/DADOS -- São os dados que serão inseridos nas Tabelas
INSERIR -- Quando é adicionado um valor dentro de algo


/*SUMARIO GERAL*/

CAPTULO 1 - COMANDOS BASICOS

1 - CRIANDO - BANCO
2 - USANDO - BANCO
3 - CRIANDO - TABELA
4 - MOSTRAR - TABELAS
5 - ESTRUTURA DA TABELA
6 - INSERINDO DADOS - TABELA
7 - VISUALIZAR DADOS - TABELA
8 - FILTRANDO DADOS - TABELA
9 - FILTRANDO VALORES NULOS - TABELAS
10- FILTRANDO COM CORINGA - TABELA
11- OPERADORES LOGICOS
12- CONTANDO E AGRUPANDO
13- MAX, MIN E MEDIA
14- SUBQUERYES
15- MODIFICANDO VALORES - TABELA
16- DELETANDO VALORES
17- DESFAZENDO UM COMANDO
18- APAGANDO

CAPTULO 2 - COMANDOS AVANCADOS

19- CRIANDO - TABELA AVANÇADA (NOOB)
20- CRIANDO - TABELA AVANÇADA (PROFICIONAL) 
21- CRIANDO TABELA COM AUTORELACIONAMENTO
22- COMANDO JOIN
23- TABELA ASSOCIATIVA
24- PROJETANDO VALORES DE MAIS DE UMA TABELA
25- FUNÇÃO IFNULL 
26- ALTERANDO UMA TABELA - ALTER TABLE
27- ORDER BY - ORDENANDO PROJEÇOES

CAPITULO 3 - PROGRAMAÇÃO EM BANCO DE DADOS

28- PROGRAMATICOS BASICOS
29- PROCEDURES
30- COMANDO VIEW 
31- TRIGGERS I
32- TRIGGERS II - COMUNICAÇÃO ENTRE BANCOS
33- TRIGGER III - DANDO UPDATE
34- RESUMO - TRIGGERS
35- CURSORES

CAPTULO 4 - TERMOS TECNICOS

36- TERMOS
37- DML, DDL, DCL, TCL
38- FORMAS NORMAIL
39- OBRIGATORIEDADE E CADINALIDADE

--*********************************************************************************************************************************************--**************************--
--*********************************************************************************************************************************************--**************************--
--*********************************************************************************************************************************************--**************************--

CAPTULO 1 - COMANDOS BASICOS

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 1 +
/*CRIANDO - BANCO*/
	CREATE PROJETO;

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 2 +
/*USANDO - BANCO*/
	USE PROJETO;

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 3 +
/*CRIANDO - TABELA*/
	CREATE TABLE LOGIN(
		NOME VARCHAR(30),
		IDADE INT(3),
		SEXO ENUM('M','F'),
		EMAIL VARCHAR(30),
		DOACAO FLOAT(10,2),
		UF CHAR(2)
	);

	VARCHAR -- CARACTERES VARIAVEIS (MENOS BITS/MAIS PROCESSAMENTO)
	CHAR    -- CARACTERES FIXOS (MAIS BITS/MENOS PROCESSAMENTO)
	INT     -- NUMEROS INTEIROS (PODE-SE SER FEITO OPERAÇOES MATEMATICAS)
	ENUM    -- OPÇÕES FIXAS E DE ESCOLHA (O USUARIO IRA ESCOLHER DENTRE UMA DAS OPÇOES COLOCADAS) - SÓ EXISTE NO MYSQL
	FLOAT   -- NUMEROS NAO INTEIROS (PRIMEIRA CASA = NUMERO TOTAL/SEGUNDA CASA = NUMEROS DEPOIS DA VIRGULA)
	BLOB    -- FOTOS E DOCUMENTOS
	TEXT    -- TEXTOS EXTENÇOS 

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 4 +
/*MOSTRAR - TABELAS*/
	SHOW TABLES;

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 5 +
/*ESTRUTURA DA TABELA*/
	DESC LOGIN;

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 6 +
/*INSERINDO DADOS - TABELA*/
	INSERT INTO LOGIN VALUES('PEDRO', 26, 'M', 'PEDROCA261@GMAIL.COM', 367.99, NULL);
	--OS VALORES DEVEM SER INSERIDOS NA MESMA ORDEM DA TABELA - CASO UM VALOR NAO EXISTA INSIRA NULL--


	INSERT INTO LOGIN(SEXO, DOACAO, IDADE, NOME, EMAIL, UF) VALUES('F', 54.60, 18, 'ANA', 'ANA@GLOBO.COM', 'SP');
	--AQUI OS VALORES SERAM INSRIDOS NA ORDEM EM QUE FORAM DITADOS--


	INSERT INTO LOGIN VALUES('DUDA', 34, 'F', 'DUDALOUCA34@GMAIL.COM', 9.50, 'RJ'),
							('JOÃO', 41, 'M', NULL, 27.30, 'SP');
	--FORMA MAIS RAPIDA DE INSERCAO DE ITENS--


*--COMO INSERIR TAIS VALORES--
	DATA        -- AAAA/MM/DD
	PRIMARY KEY -- NULL (NO CASO DO SQL SERVER, NÃO SE DEVE INSERIR NENHUM VALOR)


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 7 +
/*VISUALIZAR DADOS - TABELA*/
	SELECT NOME, IDADE  
	FROM LOGIN;

	SELECT NOME AS DOADORES
	FROM LOGIN;
	--O COMANDO "AS" FUNCIONA COMO UM NOMEADOR DE UMA SECÇAO DA TABELA--

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 8 +
/*FILTRANDO DADOS (WHERE) - TABELA*/
	SELECT IDADE, SEXO
	FROM LOGIN
	WHERE SEXO = 'M';

	SELECT NOME, IDADE, SEXO
	FROM LOGIN
	WHERE UF LIKE 'RJ';

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 9 +
/*FILTRANDO VALORES NULOS - TABELAS*/
	SELECT NOME, SEXO, ENDEREÇO
	FROM CLIENTE
	WHERE EMAIL IS NULL; --> FILTRA TODS OS VALORES QUE SÃO NULOS

	SELECT NOME, SEXO, ENDEREÇO
	FROM CLIENTE
	WHERE EMAIL IS NOT NULL; --> FLITRA TODOS OS VALORES QUE NAO SÃO NULOS

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 10 +
/*FILTRANDO COM CORINGA - TABELA*/
	SELECT NOME, UF
	FROM LOGIN
	WHERE EMAIL LIKE '%GMAIL%';
--O CARACTERE CORINGA (%) SIGNIFICA QUAQUER COISA ANTES OU DEPOIS--

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 11 +
/*OPERADORES LOGICOS*/
*--OR--> PARA QUE A SAIDA DA QUERY SEJA VERDADEIRA, BASTA QUE APENAS UMA CONDICAO SEJA VERDADEIRA.
	SELECT NOME, SEXO
	FROM LOGIN
	WHERE UF = 'SP'
	OR UF = 'MG';

*--AND--> PARA QUE A SAIDA SEJA VERDADEIRA TODAS AS CONDICOES PRECISAM SER VERDADEIRAS.
	SELECT IDADE, DOACAO
	FROM LOGIN
	WHERE IDADE > 20
	AND EMAIL LIKE '%GMAIL%';

*--AND E OR--
	SELECT NOME, IDADE, SEXO, EMAIL, DOACAO, UF
	FROM LOGIN
	WHERE IDADE < 60
	AND (UF = 'RJ' OR SEXO = 'M');

--ADICIONE REQUISIÇOES NA OREDEM DE: (OR - MAIORES DADOS PRIMEIRO) , (AND - MENORES DADOS PRIMEIRO)--
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 12 +
/*CONTANDO E AGRUPANDO*/

*--COUNT = QUANTIDADE DE ITENS--
	SELECT COUNT(*) AS 'NUMERO DE LOGINS'
	FROM LOGIN;

*--GROUP BY = QUAL TOPCO SERA CONTABILIZADO E LISTADO--
	SELECT SEXO, COUNT(*)
	FROM LOGIN
	GROUP BY SEXO;

*--ORDER BY = DETERMINA A ORDEM EM QUE SERA APRESENTADO--
	SELECT IDADE, COUNT(*)
	FROM LOGIN 
	GROUP BY IDADE
	ORDER BY 1;

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 13 +
/* MAX, MIN E MEDIA*/

*--MAX - TRAZ O VALOR MAXIMO DE UMA COLUNA--
	SELECT MAX(FEVEREIRO) AS MAIOR_FEV
	FROM VENDEDORES;

*--MIN - TRAZ O VALOR MINIMO DE UMA COLUNA--
	SELECT MIN(FEVEREIRO) AS MENOR_FEV
	FROM VENDEDORES;

*--AVG - TRAZ O VALOR MEDIO DE UMA COLUNA--
	SELECT AVG(FEVEREIRO) AS MEDIA_FEV
	FROM VENDEDORES;

*--SUM - TRAZ A SOMA TOTAL DE UMA COLUNA--
	SELECT SUM(JANEIRO) AS TOTAL_JAN
	FROM VENDEDORES;

	SELECT SEXO, SUM(MARCO) AS TOTAL_MARCO
	FROM VENDEDORES
	GROUP BY SEXO;

*--VARIAS FUNCOES--
	SELECT MAX(JANEIRO) AS MAX_JAN,
       	   MIN(JANEIRO) AS MIN_JAN,
	       AVG(JANEIRO) AS MEDIA_JAN
	FROM VENDEDORES;
	 
*--TRUNCATE - DEFINE O NUMERO DE CASAS DEPOIS DA VIRGULA-- 
	SELECT       AVG(JANEIRO)    AS MEDIA_JAN1,
	TRUNCATE    (AVG(JANEIRO),1) AS MEDIA_JAN2
	FROM VENDEDORES;

		+---------------+------------+
		| MEDIA_JAN1    | MEDIA_JAN2 |
		+---------------+------------+
		| 124429.901794 |   124429.9 |
		+---------------+------------+

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 14 +
/* SUBQUERYES*/
--NOME DE QUEM VENDEU MENOS E MAIS--
	SELECT NOME, MARCO FROM VENDEDORES
	WHERE MARCO = (SELECT MIN(MARCO) FROM VENDEDORES);  <<-- SE CHAMA SUBQUERY JUSTAMENTE POR SER 
                                                      -- UM COMANDO DENTRO DE UM COMANDO

	SELECT NOME, MARCO FROM VENDEDORES
	WHERE MARCO = (SELECT MAX(FEVEREIRO) FROM VENDEDORES);

--QUEM VENDEU ACIMA DA MEDIA--
	SELECT NOME, FEVEREIRO FROM VENDEDORES
	WHERE FEVEREIRO > (SELECT AVG(FEVEREIRO) FROM VENDEDORES);



+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 15 +
/*MODIFICANDO VALORES - TABELA*/
	UPDATE CLIENTE
	SET EMAIL = 'JOAOA@OUTLOOK.COM.BR'
	WHERE NOME = 'JOAO'; --> SEMPRE ULTILIZE O WHERE PARA IDENTIFICAR EM QUAL SECÇAO O VALOR DEVE SER ALTERADO/INSERIDO

	UPDATE CLIENTE
	SET TELEFONE = '7391-3728'
	WHERE CPF = 85548962;

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 16 +
/*DELETANDO VALORES*/
	DELETE FROM CLIENTE
	WHERE NOME = 'ANA';

	DELETE FROM CLIENTE
	WHERE NOME = 'CARLA'
	AND EMAIL = 'LILIAN@HOTMAIL.COM'; --> DELETARA OS VALORES QUE CORESPONDEREM A *AMBOS* OS VALORES

	DELETE FROM CLIENTE
	WHERE NOME = 'CARLA'
	OR EMAIL = 'LILIAN@HOTMAIL.COM'; --> DELETARA TODOS OS VALOR QUE CORESPONDEREM A *QUALQUER* UM DOS VALORES

--SEMPRE VERIFICAR ANTES DE DELETAR (ULTILIZE A MESMA SINTAXE POREM COM O COMANDO SELECT *)
	SELECT * FROM CLIENTE
	WHERE NOME = 'CARLA'
	AND EMAIL = 'LILIAN@HOTMAIL.COM';

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 17 +
/*DESFAZENDO UM COMANDO*/
	COMMIT E ROLLBACK

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 18 +
/*APAGANDO */
	DROP TABLE CLIENTE;
	DROP DATABASE PROJETO;

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--******************************************************************************************************************************************--
--******************************************************************************************************************************************--
--******************************************************************************************************************************************--

CAPTULO 2 - COMANDOS AVANCADOS

/*SUMARIO*/

19- CRIANDO - TABELA AVANÇADA (NOOB)
20- CRIANDO - TABELA AVANÇADA (PROFICIONAL) +
21- CRIANDO TABELA COM AUTORELACIONAMENTO
22- COMANDO JOIN
23- TABELA ASSOCIATIVA
24- PROJETANDO VALORES DE MAIS DE UMA TABELA
25- FUNÇÃO IFNULL +
26- ALTERANDO UMA TABELA - ALTER TABLE
27- ORDER BY - ORDENANDO PROJEÇOES


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 19 +
/*CRIANDO - TABELA AVANÇADA (NOOB)*/

*--TABELA PRINCIPAL--
	CREATE TABLE CLIENTE(
		IDCLIENTE INT      PRIMARY KEY AUTO_INCREMENT,  <-- ATENTE-SE A ESSE VALOR
		NOME VARCHAR(30)   NOT NULL,
		SEXO ENUM('M','F') NOT NULL,
		EMAIL VARCHAR(50)  UNIQUE,
		CPF VARCHAR(15)    UNIQUE
	);

	AUTO_INCREMENT --> VALOR SE AUTO INSERE NA TABELA
	NOT NULL --> OBRIGAÇÃO QUE SEJA INSERIDO UM VALOR
	UNIQUE --> O VALOR ALI INSERIDO SERA UNICO E NAO PODERA SER REPETIDO EM OUTRO CADASTRO



*--TABELA COM CHAVE ESTRANGEIRA--
	CREATE TABLE ENDERECO(
		IDENDERECO INT     PRIMARY KEY AUTO_INCREMENT,
		RUA VARCHAR(30)    NOT NULL,
		BAIRRO VARCHAR(30) NOT NULL,
		CIDADE VARCHAR(30) NOT NULL,
		ESTADO CHAR(2)     NOT NULL,
		ID_CLIENTE INT     UNIQUE, <-------- PRIMEIRO SE CRIA A CHAVE ESTRANGEIRA COM O MESMO VALOR DA TABELA PRINCIPAL (INT)
	                                 - DEPENDENDO DE CADA RELACIONAMETO ADICIONE O COMANDO
                                     - (1,1) COM UNIQUE
                                     - (0,N) SEM UNIQUE							   
	
		FOREIGN KEY (ID_CLIENTE)  <-------- ADICIONE O COMANDO FOREIGN KEY RELACIONADO A TABELA ESTRANGEIRA  
		REFERENCES CLIENTE (IDCLIENTE) <--- E ADICONE REFERENCES PARA LINKAR COM A TABELA PRINCIPAL
	);

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 20 +
/*CRIANDO - TABELA AVANÇADA (PROFICIONAL)*/
	CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL
	);

	CREATE TABLE TELEFONE(
	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,              <<-- FK SEM VALOR, INSERIR TODAS POSTERIORMENTE
	NUMERO VARCHAR(10) NOT NULL,
	ID_CLIENTE INT
	);

--ULTILIZAR AS CONSTRAINTS-- (PADRONIZAÇÃO DA CONSTRATINT - (PK, FK)_TABELA PERTENCENTE_TABELA DE ONDE VEM)

	ALTER TABLE TELEFONE ADD CONSTRAINT FK_CLIENTE_TELEFONE              <<--DESSA FORMA PODEMOS RENOMEAR A CONTRAINT
	FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE);                 --PARA O NOME DE MELHOR ORGANIZAÇÃO


	ALTER TABLE CLIENTE ADD CONSTRAINT PK_CLIENTE                        <<--CASO QUEIRA RENOMEAR AS PK
	PRIMARY KEY(IDCLIENTE);

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 21 +
/*CRIANDO TABELA COM AUTORELACIONAMENTO*/   --SE TRATA DE UMA UNICA TABELA TANTO COM PRIMARY KEY QUANTO FOREIGN KEY
	CREATE TABLE CURSOS(
		IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
		NOME VARCHAR(30),
		HORAS INT,
		VALOR FLOAT(10,2),
		ID_PREREQ INT            <<-- FK ULTILIZANDO APENAS UMA TABELA
	);

	ALTER TABLE CURSOS ADD CONSTRAINT FK_PREREQ
	FOREIGN KEY(ID_PREREQ) REFERENCES CURSOS(IDCURSO);

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 22 +
/*COMANDO JOIN*/  --SE TRATA DE UM COMANDO DE LIGAÇAO ENTRE TABELAS
--INNER JOIN-- (LIGA TODOS OS VALORES PEDIDOS DE AMBAS AS TABELAS)
	SELECT C.NOME, 
		   T.NUMERO AS CELULAR, 
		   E.ESTADO

	FROM CLIENTE C
	      INNER JOIN ENDERECO E 
	      ON C.IDCLIENTE = E.ID_CLIENTE
	      INNER JOIN TELEFONE T
	      ON C.IDCLIENTE = T.ID_CLIENTE

--LEFT JOIN-- (CHAMA TODOS OS VALORES DO "CENTRO" E DA PRIMEIRA TABELA)
	SELECT C.NOME AS CURSO, 
		   C.VALOR AS VALOR, 
		   C.HORAS AS CARGA, 
		   IFNULL(P.NOME, "---") AS PREREQ

	FROM CURSOS C 
		LEFT JOIN CURSOS P
		ON P.IDCURSO = C.ID_PREREQ;

--RIGHT JOIN-- (CHAMA TODOS OS VALORES DO "CENTRO" E DA SEGUNDA TABELA)



+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 23 +
/* TABELA ASSOCIATIVA */
--QUANDO LIDAMOS COM CHAVE ESTRANGEIRA (FK), DEVEMOS ESCOLHER A ONDE A CHAVE IRA FICAR
EM RELACIONAMENTO (1 X 1) A CHAVE FICA NA TABELA MAIS FRACA
EM RALACIONAMENTO (1 X N) A CHAVE FICA NO LADO N

MAS QUANDO O RELACIONAMENTO É (N X N) DEVEMOS CRIAR UMA NOVA TABELA (TABELA ASSOCIATIVA)

	CREATE TABLE CARRO_COR(
		ID_CARRO INT,
		ID_COR INT,
		PRIMARY KEY(ID_CARRO,ID_COR)          <<--SE TRATA DE UMA TABELA QUE UNE VARIAS FKs
	);

--OU QUANDO QUEREMOS CRIAR UMA TABELA SEPARADA COM TODOS OS CONJUNTOS DE PKs--
CREATE TABLE PACIENTE                    CREATE TABLE MEDICO                    CREATE TABLE HOSPITAL
			 IDPACIENTE (PK)                          IDMEDICO (PK)                          IDHOSPITAL (PK)                                                                                                       
		     NOME                                     NOME                                   NOME                                                                                   
		     SEXO                                     SEXO                                   BAIRRO                            
		     NASCIMENTO                               ESPECIALIDADE                          CIDADE  


CREATE TABLE CONSULTA
			 IDCONSULTA  (PK)
			 IDPACIENTE  (FK)
			 IDMEDICO    (FK)
			 IDHOSPITAL  (FK)
			 DATA
			 DIAGNOSTICO
			 INTERNACAO                                                                                                


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 24 +
/* PROJETANDO VALORES DE MAIS DE UMA TABELA*/

	SELECT C.NOME, 
		   C.SEXO, 
		   E.BAIRRO, 
		   E.CIDADE, 
		   T.TIPO, 
		   T.NUMERO <--- PARA MELHOR PERFOMANCE, PONTERE 
	FROM CLIENTE C
		INNER JOIN ENDERECO E
			ON C.IDCLIENTE = E.ID_CLIENTE  <--- INDICAR PELO PONTEIRAMENTO A QUAL TABELA SE REFERE
		INNER JOIN TELEFONE T
			ON C.IDCLIENTE = T.ID_CLIENTE;


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 25 +
/*FUNÇÃO IFNULL*/
--ULTILIZA-SE PARA UMA COLUNA QUE MOSTRE VALOR NULL APRESENTAR OUTRO RESULTADO

	--IFNULL()--

	SELECT  C.NOME, 
			E.ESTADO, 
			T.NUMERO,
			IFNULL(C.EMAIL, 'NAO TEM EMAIL'),   <<-- (1º CAMPO - QUAL COLUNA / 2º CAMPO - COMO CHAMAR)

		FROM CLIENTE C
		INNER JOIN ENDERECO E
		ON C.IDCLIENTE = E.ID_CLIENTE
		INNER JOIN TELEFONE T
		ON C.IDCLIENTE = T.ID_CLIENTE;

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 26 +
/* ALTERANDO UMA TABELA - ALTER TABLE*/ 

*--CHANGE - ALTERANDO O NOME--
	ALTER TABLE CLIENTE
	CHANGE NOME 
	SEXO VARCHAR(30) NOT NULL;     <<-- ALTERA O NOME DE UMA COLUNA

	ALTER TABLE CLIENTE            <<-- ALTERA O NOME DE UMA TABELA
	RENAME ALUNOS;

*--MODIFY - ALTERANDO O TIPO--
	ALTER TABLE CLIENTE
	MODIFY SEXO CHAR(2) NOT NULL;

*--ADICIONANDO COLUNAS--

	(ALTER TABLE CLIENTE
	ADD CPF INT (11) NOT NULL;                  <<--SERA ADICIONADO POR ULTIMO


	ALTER TABLE CLIENTE
	ADD COLUMN CPF INT(11) NOT NULL
	AFTER NOME_PRODUTO;                         <<--EM UMA ORDEM ESPECIFICA


	ALTER TABLE CLIENTE
	ADD COLUMN CPF INT(11) NOT NULL
	FIRST;                                      <<-- SERA A PRIMEIRA

	ALTER TABLE CLIENTE 
	ADD PRIMARY KEY (SEXO);


*--APAGANDO UMA COLUNA--
	ALTER TABLE PRODUTO
	DROP COLUMN PESO;
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 27 +
/*ORDER BY - ORDENANDO PROJEÇOES*/
+--------+-------+                                               
| NUMERO | NOME  |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
+--------+-------+                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
|      1 | JOAO  |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
|      1 | MARIA |     --COM O COMANDO DE ORDER BY PODEMOS CHAMAR PELO NOME OU                                                                                                                                                                                                                                                                                                                                                                                                                          
|      2 | ZOE   |     --PELO NUMERO EM RELAÇÃO A QUANDO ELA APRECE                                                                                                                                                                                                                                                                                                                                           
|      2 | ANDRE |                                                                                                                                                                                                                                                                     
+--------+-------+                                                                                                                                                                                      
     1       2 

-- ORDENAGEM BASICA --
	SELECT * FROM ALUNOS				
	ORDER BY NUMERO;					

	SELECT * FROM ALUNOS
	ORDER BY 2; 
-- ORDENANDO POR MAIS DE UMA COLUNA --
	SELECT * FROM ALUNOS				
	ORDER BY NUMERO, NOME;				

	SELECT * FROM ALUNOS
	ORDER BY 1, 2;
-- MESCLANDO ORDER BY COM PROJECAO --
	SELECT NOME FROM ALUNOS    <<-- AGRUPANDO COM PROJEÇÃO DEVE SER FEITA 
	ORDER BY 1, 2;             <<-- PEDINDO A TABELA PELO NOME

	SELECT NOME FROM ALUNOS
	ORDER BY NUMERO, NOME;

-- ORDER BY DECRESCENTE / ASCENDENTE --
	SELECT * FROM ALUNOS
	ORDER BY 1 ASC;

	SELECT * FROM ALUNOS
	ORDER BY 1 DESC;                                                                                        

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--******************************************************************************************************************************************--
--******************************************************************************************************************************************--
--******************************************************************************************************************************************--

CAPITULO 3 - PROGRAMAÇÃO EM BANCO DE DADOS

28- PROGRAMATICOS BASICOS
29- PROCEDURES
30- COMANDO VIEW 
31- TRIGGERS I
32- TRIGGERS II - COMUNICAÇÃO ENTRE BANCOS
33- TRIGGER III - DANDO UPDATE
34- RESUMO - TRIGGERS
35- CURSORES

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 28 +
/*PROGRAMATICOS BASICOS*/
 --MOSTRA O STATUS DO BANCO / OBS. NÃO NESCECITA DE DELIMITADOR (;)
	STATUS

 -- FORMA DE MUDAR  DELIMITADOR (NO CASO PARA $), NESCESARIO PARA PROGRAMAR
	DELIMITER #

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 29 +
/* PROCEDURES */
	CREATE PROCEDURE NOME_EMPRESA()
	BEGIN
		SELECT 'UNIVERSIDADE DOS DADOS' AS EMPRESA;   <<-- QUALQUER PROGRAMACAO
	END
	#

--CHAMANDO UMA PROCEDURE--
	CALL NOME_EMPRESA()#

	DELIMITER ;

	CALL NOME_EMPRESA();

*--PROCEDURES COM PARAMETROS--
	CREATE PROCEDURE CONTA(NUMERO1 INT, NUMERO2 INT)
	BEGIN
		SELECT NUMERO1 + NUMERO2 AS CONTA;
	END #

	CALL CONTA(100,50)#



	CREATE PROCEDURE CAD_CURSO(P_NOME VARCHAR(30),
							   P_HORAS INT(30),
							   P_PRECO  FLOAT(10,2))
	BEGIN
		INSERT INTO CURSOS VALUES(NULL,P_NOME,P_HORAS,P_PRECO);
	END #

	CALL CAD_CURSO('BI SQL SERVER',35,300.00);

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 30 +
/* COMANDO VIEW */
--FORMA DE CRIAR UMA "TABELA" VIRTUAL COM UM COMANDO PRONTO--

	CREATE VIEW V_RELATORIO AS        <<-- CRIANDO A TABELA VIRTUAL COM A QUERY PRONTA
	SELECT  C.NOME, 
			C.SEXO, 
			C.EMAIL, 
			T.TIPO, 
			T.NUMERO, 
			E.BAIRRO, 
			E.CIDADE, 
			E.ESTADO
	FROM CLIENTE C 
	INNER JOIN TELEFONE T 
	ON C.IDCLIENTE = T.ID_CLIENTE 
	INNER JOIN ENDERECO E 
	ON C.IDCLIENTE = E.ID_CLIENTE;


	SELECT NOME, NUMERO, ESTADO       <<-- FORMA DE CHAMAR A QUERY
	FROM V_RELATORIO;

/*ALGUNS COMANDOS NAO FUNCIONÃO EM UMA TABELA VIEW*/
	-EM TABELAS COM JOIN NAO SÃO PERMITIDOS COMANDOS INSERT E DELETE
	-POREM SEMPRE EM TODAS AS TABELAS VIEW SÃO PERMITIDOS COMANDOS DE UPDATE

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 31 +
/* TRIGGERS I */
*--CONCEITOS IMPORTANTÍSSIMOS PARA TRIGGER--
	UMA TRIGGER DEVE SER REALIZADA NO TEMPO (ANTES OU DEPOIS - BEFORE AFTER)
	A TRIGGER FUNCIONA APENAS SOBRE OS COMANDOS (INSERT, DELETE E UPDATE)

	OU SEJA, EXISTEM 6 MOMENTOS PARA UMA TRIGGER SER REALIZADA

	      Insert          Delete            Update 
	 Antes  | Depois   Antes | Depois   Antes | Depois
	   1        2        3       4        5       6

	->> DUAS TRIGGER NAO PODEM SER INSERIDAS NO MESMO TEMPO DA MESMA TABELA 
	    (EX: Duas triggers no momento 4 na mesma Cliente)

  --CONCEITO DE NEW E OLD--
	INSERT -> (NEW) INSERE UM NOVO VALOR
	DELETE -> (OLD) DELETA UMA VALOR JA EXISTENTE (VELHO)

	UPDATE -> (NEW/OLD) RETIRA UM VALOR EXISTENTE (VELHO), E ADICIONA UM VALOR NOVO

  --CRIANDO A TRIGGER DE DEMONSTRAÇÃO--
	CREATE TRIGGER NOME
	BEFORE/AFTER INSERT/DELETE/UPDATE ON TABELA -->ESCOLHER APENAS 1 DE CADA - (BEFORE DELETE ON TABELA)
	FOR EACH ROW  -->(PARA CADA LINHA)
	BEGIN -> INICIO

			QUALQUER COMANDO SQL

	END -> FIM

*--CRIANDO TRIGGER VERDADEIRA--
	DELIMITER $

	CREATE TRIGGER BACKUP_ALU_D
	BEFORE DELETE ON ALUNOS
	FOR EACH ROW 
	BEGIN
		INSERT INTO BKP_ALUNOS VALUES(NULL, OLD.IDALUNO, OLD.NOME, OLD.REGISTRO, 'D');
	END
	$

	-->>NESSA TRIGGER HAVERA UMA COPIA DE ARQUIVOS ANTES DE QUE QUALQUER VALOR SEJA DELETADO DA TABELA ALUNOS
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 32 +
/*TRIGGERS II - COMUNICAÇÃO ENTRE BANCOS*/
	BANCOS / TABELAS
	FACULDADE   - ALUNOS
	BACKUP - BKP_ALUNOS

*--ESTRUTURA--
	CREATE TRIGGER BACKUP_ALUNO_I
	BEFORE INSERT ON ALUNOS
	FOR EACH ROW
	BEGIN	
		INSERT INTO BACKUP.BKP_ALUNOS VALUES(NULL, NEW.IDALUNO, NEW.NOME, NEW.REGISTRO, 'I');
	END
	$
	-->EXEMPLO DE TABELA ULTILIZANDO INSERT (ULTILIZA-SE O NEW) 
	-->POREM A PRIMARY KEY AUTO_INCREMENT DA ERRO COM ESSA ESTRUTURA (TRIGGER DA BACKUP ANTES DA PK SER INSERIDA NA ORIGINAL)

	CREATE TRIGGER BACKUP_ALUNO_I
	AFTER INSERT ON ALUNOS
	FOR EACH ROW                                    <<-- PARA RESOLVER BASTA ALTERAR DE BEFORE PARA AFTER
	BEGIN
		INSERT INTO BACKUP.BKP_ALUNOS VALUES(NULL, NEW.IDALUNO, NEW.NOME, NEW.REGISTRO, 'I');
	END
	$

------------------------------------------------------------------------------------------------------------------------------
	CREATE TRIGGER BACKUP_ALUNO_D
	BEFORE DELETE ON ALUNOS
	FOR EACH ROW
	BEGIN	
		INSERT INTO BACKUP.BKP_ALUNOS VALUES(NULL, OLD.IDALUNO, OLD.NOME, OLD.REGISTRO, 'D');
	END
	$
	-->EXEMPLO DE TABELA ULTILIZANDO DELETE (ULTILIZA-SE O OLD)


--COMO FICA UMA TABELA DE BACKUP--
PARA ISSO É NESCESARIO QUE NA CRIAÇÃO DA TABELA BACKUP CRIE-SE UMA COLUNA PARA OS EVENTOS
DEPOIS ADICIONA-SE O VALOR NA TRIGGER ('D' PARA DELETE/ 'I' PARA INSERT/ 'U' PARA UPDATE)
+-------+---------+----------+----------+--------+
| IDBKP | IDALUNO | NOME     | REGISTRO | EVENTO |
+-------+---------+----------+----------+--------+
|     1 |       1 | HENRIQUE | A7D4B    | I      |
|     2 |       2 | MARIA    | D72M6    | I      |
|     3 |       3 | GABRIELA | O2M6N    | I      |
|     4 |       2 | MARIA    | D72M6    | D      |
+-------+---------+----------+----------+--------+

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 33 +
/*TRIGGERS III - DANDO UPDATE*/
--CONTEXTUALIZAÇÃO (MOSTRAND AS TABELAS)
	CREATE TABLE PRODUTO(
		IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
		NOME VARCHAR(30),
		VALOR FLOAT(10,2)
	);

	CREATE TABLE BKP_PRODUTO(
		IDBACKUP INT PRIMARY KEY AUTO_INCREMENT,
		IDPRODUTO INT,
		NOME VARCHAR(30),
		VALOR_ORIGINAL FLOAT(10,2),
		VALOR_ALTERADO FLOAT(10,2),
		DATA DATETIME,
		USUARIO VARCHAR(30),
		EVENTO CHAR(1)
		
	);

	--DESCOBRINDO A HORA--
	SELECT NOW();

	--DESCOBRINDO QUEM FEZ--
	SELECT CURRENT_USER();


*--CRIANDO A TRIGGER UPDATE--
	CREATE TRIGGER AUDIT_PROD
	AFTER UPDATE ON PRODUTO
	FOR EACH ROW
	BEGIN
		INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL, OLD.IDPRODUTO, OLD.NOME, OLD.VALOR, NEW.VALOR,
		NOW(), CURRENT_USER() ,'U');
	END
	$

UPDATE PRODUTO SET VALOR = 110.00
WHERE IDPRODUTO = 4;

+----------+-----------+------------------+----------------+----------------+---------------------+----------------+--------+
| IDBACKUP | IDPRODUTO | NOME             | VALOR_ORIGINAL | VALOR_ALTERADO | DATA                | USUARIO        | EVENTO |
+----------+-----------+------------------+----------------+----------------+---------------------+----------------+--------+
|        1 |         4 | LIVRO SQL SERVER |         100.00 |         110.00 | 2021-04-07 16:59:39 | root@localhost | U      |
+----------+-----------+------------------+----------------+----------------+---------------------+----------------+--------+

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 34 +
/*RESUMO - TRIGGERS*/
	*TRIGGERS PODEM SER REALIZADAS COM OS COMANDOS (INSERT, DELETE, UPDATE)
	 SEGUINDO A DEVIDA REGRA:

	 INSERT - NEW
	 DELETE - OLD
	 UPDATE - (NEW PARA VALORES À SER INSERIDOS) E (OLD PARA VALORES QUE SERÃO DELETADOS/TROCADOS)

	*TRIGGER TEM OS (TEMPOS) BEFORE E AFTER
	 NAO PODE  SER INSERIDO DUAS TRIGGERS NO MESMO TEMPO DE COMANDO NA MESMA TABELA

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 35 +
/*CURSORES*/ 
--CONTEXTUALIZAÇÃO--
_________________________________________________           ________________________________
|	CREATE TABLE VENDEDORES(					|	        |	CREATE TABLE VEND_TOTAL(   |
|	IDVENDEDOR INT PRIMARY KEY AUTO_INCREMENT,	|		    |	NOME VARCHAR(50),          |                              
|	NOME VARCHAR(50),						    |           |	JAN INT,                   |                     
|	JAN INT,						            |           |	FEV INT,                   |                     
|	FEV INT,						            |           |	MAR INT,                   |                   
|	MAR INT						                |           |	TOTAL INT,                 |                       
|	);						                    |           |	MEDIA INT                  |                      
|_______________________________________________|           |	);                         |               
                                                            |______________________________|                                                    


--CRIANDO O CURSOR
	--|ATENÇÃO -> VALORES ENTRE "" APENAS DEMONSTRATIVOS PARA MOSTRAR VALORES QUE MUDÃO
	DELIMITER $
	CREATE PROCEDURE INSEREDADOS()
	BEGIN
			DECLARE FIM INT DEFAULT 0;                                       --| [VAR1, VAR2...] Sempre muda, dependendo                                                           
			DECLARE "VAR1, VAR2, VAR3, VTOTAL, VMEDIA INT" ;               <<--| dos valores da tabela no qual se                 
			DECLARE "VNOME VARCHAR(50)" ;                                    --| criará um declare p/ cada valor                                                                     
			                                                                                
			DECLARE REG CURSOR FOR(                                                                                                          
				SELECT "NOME, JAN, FEV, MAR FROM VENDEDORES"               <<--| Inicia-se o cursor com REG e                                                                                          
			);                                                               --| as tabelas ao qual quer inserir         
			
			DECLARE CONTINUE HANDLER FOR NOT FOUND SET FIM = 1;    <<--|                                                                                                        
			OPEN REG;                                                --| VALOR NUNCA MUDA                                                             
			REPEAT                                                   --|                                                          
			
				FETCH REG INTO "VNOME, VAR1, VAR2, VAR3";         <<--| Assim como acima foi pedido [NOME, JAN, FEV, MAR]                                                                                          
				IF NOT FIM THEN                                     --| Adicionar os DECLARES de cada um respectivamente                                                           
				
					SET "VTOTAL = VAR1 + VAR2 + VAR3";      <<--| Aqui se faz a operação que se quer fazer                                                                 
					SET "VMEDIA = VTOTAL / 3";                                                                                                             
					
					INSERT INTO "VEND_TOTAL" VALUES("VNOME,VAR1,VAR2,VAR3,VTOTAL,VMEDIA");    <<--| Com a operação pronta                                                                                                          
					                                                                            --| adicionar na tabela desejada 
				END IF;                                                                         --| os valores de DECLARE                                 
				
			UNTIL FIM END REPEAT;        <<--| TERMINA A OPERAÇÃO DE CURSOR                                                                                                       
			CLOSE REG;                                                                                                             
	END
	$


	DELIMITER ;
	CALL INSEREDADOS();

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--******************************************************************************************************************************************--
--******************************************************************************************************************************************--
--******************************************************************************************************************************************--


CAPTULO 4 - TERMOS TECNICOS

/*SUMARIO*/

36- TERMOS
37- DML, DDL, DCL, TCL
38- FORMAS NORMAIL
39- OBRIGATORIEDADE E CADINALIDADE

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 36 +
/*TERMOS*/
--VETOR--
	TODA TABELA COM MULTIPLOS DADOS.
	EX: [AMARELO, AZUL, VERMELHO, VERDE] - CAMPO VETORIZADO DE CORES.

--MULTIVALORADO--
	UM CAMPO COM MULTIPLOS DADOS DIFERENTES.
	EX: [RIACHUELO - CENTRO - RIO DE JANEIRO - RJ] - CAMPO MULTIVALORADO DE ENDEREÇO.
	OBS --> TODO CAMPO MULTIVALORADO TAMBEM É UM VETOR

--PRIMARY KEY--
	UMA FORMA DE IDENTIFICAR E BUSCAR UM DADO EM UMA TABELA.
	CHAVE NATURAL    - É UMA CHAVE DE IDENFICAÇAO(PRIMARY KEY) QUE JA EXISTE NATURALMENTE (EX: CPF)
	CHAVE ARTIFICIAL - É UMA CHAVE DE IDENFICAÇAO(PRIMARY KEY) QUE FOI CRIADA EXPECIFICAMENTE PARA UM BANCO (EX: ID)

--CONSTRAINT--


--DICIONARIO DE DADOS--

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 37 +
/*DML, DDL, DCL, TCL*/

	DML - DATA MANIPULATION LANGUAGE --INSERT, DELETE e UPDATE--
	São os comandos que interagem com os dados dentro das tabelas.

	DDL - DATA DEFINITION LANGUAGE --CREATE, ALTER e DROP--
	São os comandos que interagem com os objetos do banco.
	
	DCL - DATA CONTROL LANGUAGE --GRANT, REVOKE E DENY--
	São os comandos para controlar a parte de segurança do banco de dados.

	TCL - TRANSACTION CONTROL LANGUAGE --BEGIN TRANSACTION, COMMIT E ROLLBACK--
	São os comandos para controle de transação.

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 38 +
/*FORMAS NORMAIS*/ -- REGRAS BASICAS PARA A CRIAÇAO DE UM BANCO --
--PRIMEIRA FORMA NORMAL--

	1. TODO CAMPO VETORIZADO SE TORNARÁ OUTRA TABELA.
	2. TODO CAMPO MULTIVALORADO SE TORNARÁ OUTRA TABELA QUANDO DIVIZIVEL.
	3. TODA TABELA NECESSITA DE PELO MENOS UM CAMPO QUE IDENTIFIQUE TODO O REGISTRO COMO SENDO UNICO (PRIMARY KEY).

--SEGUNDA FORMA NORMAL--
	1. EM UMA TABELA COM MULTIPLAS PKs UM CAMPO NAO CHAVE (NORMAL) DEVE ATENDER A TOTALIDADE DAS CHAVES
		EX: IDPACIENTE
			IDMEDICO         -->> UM CAMPO [DATA OU DIAGNOSTICO] NESCESSITA DA UNIAO DE TODOS AS PKs
			IDHOSPITAL

--TERCEIRA FORMA NORMAL--
	1. CAMPOS NAO CHAVE QUE DEPENDEM DE OUTROS CAMPOS NAO CHAVES VIRAM OUTRA TABELA
		EX: IDPACIENTE
			IDMEDICO         -->> COM O CAMPO [INTERNAÇÃO] -> O QUE DEPENDE SE EU VOU SER INTERNADO OU NÃO,
			IDHOSPITAL       -->> NAO DEPENDE DO PACIENTE, MEDICO OU DO HOSPITAL. E SIM DO DIAGNOSTICO

			SENDO ASSIM EU CRIO UMA NOVA TABELA PARA O DIAGNOSTICO

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 39 +
/*OBRIGATORIEDADE E CADINALIDADE*/
-- QUEM DEFINE A CARDI. E OBRIG. É A REGRA DE NEGOCIOS!!! NÃO VOÇÊ! --

/*OBRIGATORIEDADE*/ - DEFINE SE UM VALOR É OBRIGATORIO OU NÃO.
	0 - NÃO OBRIGATORIO
	1 - OBRIGATORIO

/*CARDINALIDADE*/ - DEFINE QUANTOS DADOS PODEM SER INSERIDOS NA TABELA.
	1 - MAXIMO DE UM
	N - MAIS DE UM

	(1,1) - OBRIGATORIO E MAXIMO DE UM
	(0,N) - NÃO OBRIGATORIO POREM SE INSERIR, PODE COLOCAR MAIS DE UM

/*FOREIGN KEY (FK) - CHAVE ESTRANGEIRA*/
	CHAVE ESTRANGEIRA É A CHAVE PRIMARIA DE UMA TABELA QUE VAI 
	ATE A OUTRA TABELA PARA FAZER REFERENCIA ENTRE REGISTROS

--ONDE FICA A CHAVE ESTRANGEIRA?--
	* EM RELACIONAMENTO 1 X 1 A CHAVE ESTRANGEIRA FICA NA TABELA MAIS FRACA
	* EM RELACIONAMENTO 1 X N A CHAVE ESTRANGEIRA FICARA SEMPRE NA CARDINALIDADE N
	* EM RELACIONAMENTO N X N CRIA-SE UMA TABELA ASSOCIATIVA (PG: XX)

--QUAL TABELA É MAIS FORTE OU MAIS FRACA?--
	* O CONCEITO DE FORTE E FRACO SE RESUME A QUAL TABELA É MAIS IMPORTANTE QUE HAJA O REGISTRO
	* SEMPRE VARIA DE EMPRESSA
	-> GERALMENTE SEMPRE É DEFINIDO PELA <REGRA DE NEGOCIO>

--EXEMPLO--
  COM UMA TABELA DE [Usuario] E UMA DE [Endereço] PARA UMA PADARIA, 
  QUAL É MAIS IMPORTANTE PARA ENCONTRAR O REGISTRO DE CLIENTE? 
  >>Usuario (POIS NAO DA PRA SABER QUAL É O CLIENTE PELO ENDEREÇO) 
  - SENDO ASSIM, ESSA É A TABELA MAIS FORTE

  TABELA [Cliente] E [Carro] EM UM ESTACIONAMETO, 
  QUAL É MAIS IMPORTANTE PARA ENCONTRAR O REGISTRO?
  >>Carro (POIS QUALQUER UM PODE ULTILIZAR O CARRO, ENTAO O MAIS IMPORTANTE É ARMAZENAR O CARRO) 
  - TABELA MAIS FORTE


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--******************************************************************************************************************************************--
--******************************************************************************************************************************************--
--******************************************************************************************************************************************--
