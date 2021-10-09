/*-| Autor.............: Henrique Campos Jonck - 17 Anos                                 |-*/
/*-| Data de Inicio....: 15/05/2021                                                      |-*/
/*-| Guia de Linguagem.: SQLSERVER                                                       |-*/
/*_________________________________________________________________________________________*/
/*-| Este guia foi criado com o intuito de estudos e anotações.                          |-*/
/*-| Escrito no editor de código Visual Studio Code.                                     |-*/
/*-| Altamente recomendavel que se utilize a extensão "Better Comments" de "Aaron Bond". |-*/


/*TERMOS*/
BANCO   -- Principal parte, onde são criadas todas as tabelas
TABELA  -- Subparte do banco, onde cria-se os 'diagramas' de insersão de dados
COLUNA  -- Parte interna de uma Tabela, cada coluna sera dafinido um valor diferente à ser inserido
LINHA   -- É onde se vê os dados da tabela, fica na horizontal
VALORES/DADOS -- São os dados que serão inseridos nas Tabelas
INSERIR -- Quando é adicionado um valor dentro de algo


DELIMITADOR SQL SERVER = GO

/*SUMARIO GERAL*/

CAPTULO 1 - COMANDOS GERAIS

X - COMANDO GO
1 - CRIANDO - BANCO
2 - USANDO - BANCO
3 - WHERE - FILTRANDO DADOS
4 - WHERE - FILTRANDO VALORES NULOS
5 - WHERE - FILTRANDO COM CORINGA
6 - OPERADORES LOGICOS
7 - TABELA - INSERINDO VALORES 
8 - TABELA - MODIFICANDO VALORES 
9 - TABELA - DELETANDO VALORES 
10- DELETAR TABELAS E DATABASES 
11- USUARIO ATUAL
12- IDENTITY
13- PADRONIZAÇÃO
14- BULK INSERT - IMPORTAÇÃO DE ARQUIVOS


CAPTULO 2 - CRIANDO TABELAS

15- TABELAS - BASICO
16- TABELAS - AVANÇADO / AUTO RELACIONAMENTO
17- TABELA ASSOCIATIVA
18- CONSTRAINTS
19- ALTER TABLE - ALTERANDO UMA TABELA


CAPTULO 3 - VIZUALIZANDO

20- MOSTRAR - TABELAS
21- DESCREVENDO COLUNAS
22- VISUALIZAR DADOS - TABELA
23- COMANDO JOIN
24- FUNÇÃO ISNULL
25- GROUP BY - CONTANDO E AGRUPANDO
26- ORDER BY - ORDENANDO PROJEÇOES
27- MAX, MIN E MEDIA
28- SUBQUERYES
29- COMANDOS DE DATA
30- CONVERSÃO DE DADOS
31- CONCATENAÇÃO
32- CHARINDEX
33- DECLARE


CAPTULO 4 - PROGRAMANDO

29- PROGRAMATICOS BASICOS
30- PROCEDURES
31- COMANDO VIEW
32- TRIGGERS I 
33- TRIGGERS II - COMUNICAÇÃO ENTRE BANCOS
34- TRIGGERS III - DANDO UPDATE
35- CURSORES
XX- REGRA DE NEGOCIO NO BD
--TODO: Programação em TSQL

CAPTULO 5 - TERMOLOGIAS

36- TERMOS
37- DML, DDL, DCL, TCL
38- FORMAS NORMAIS
39- BANCOS DE DADOS DO SISTEMA
40- ARQUITETURA SQL SERVER
41- OBRIGATORIEDADE E CADINALIDADE

CAPTULO 6 - PRODUTIVIDADE



--*********************************************************************************************************************************************--**************************--
--*********************************************************************************************************************************************--**************************--
--*********************************************************************************************************************************************--**************************--

/*SUMARIO*/
CAPTULO 1 - COMANDOS GERAIS

X - COMANDO GO
1 - CRIANDO - BANCO
2 - USANDO - BANCO
3 - WHERE - FILTRANDO DADOS
4 - WHERE - FILTRANDO VALORES NULOS
5 - WHERE - FILTRANDO COM CORINGA
6 - OPERADORES LOGICOS
7 - TABELA - INSERINDO VALORES 
8 - TABELA - MODIFICANDO VALORES 
9 - TABELA - DELETANDO VALORES 
10- APAGANDO 
11- USUARIO ATUAL
12- IDENTITY
13- PADRONIZAÇÃO
14- BULK INSERT - IMPORTAÇÃO DE ARQUIVOS


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 1 +
/*COMANDO GO*/
-- O comando GO serve como delimitador no SLQ Server
	SELECT * FROM CLIENTE
	GO

-- Mas tambem pode ser ultilizado para dizer quantas vezes aquele comando será executado
	SELECT * FROM CLIENTE
	GO 5
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 1 +
/*CRIANDO - BANCO*/
	CREATE DATABASE PROJETO
	GO

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 2 +
/*USANDO - BANCO*/
	USE PROJETO
	GO

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 3 +
/*WHERE - FILTRANDO DADOS*/
	SELECT IDADE, SEXO
	FROM LOGIN
	WHERE SEXO = 'M'
	GO

	SELECT NOME, IDADE, SEXO
	FROM LOGIN
	WHERE UF LIKE 'RJ'
	GO

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 4 +
/*WHERE - FILTRANDO VALORES NULOS*/
	SELECT NOME, SEXO, ENDEREÇO
	FROM CLIENTE
	WHERE EMAIL IS NULL --> FILTRA TODS OS VALORES QUE SÃO NULOS
	GO

	SELECT NOME, SEXO, ENDEREÇO
	FROM CLIENTE
	WHERE EMAIL IS NOT NULL --> FILTRA TODOS OS VALORES QUE NAO SÃO NULOS
	GO

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 5 +
/*WHERE - FILTRANDO COM CORINGA*/
	SELECT NOME, UF
	FROM LOGIN
	WHERE EMAIL LIKE '%GMAIL%'
	GO
--O CARACTERE CORINGA (%) SIGNIFICA QUAQUER COISA ANTES OU DEPOIS--

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 6 +
/*OPERADORES LOGICOS*/
--OR--> PARA QUE A SAIDA DA QUERY SEJA VERDADEIRA, BASTA QUE APENAS UMA CONDICAO SEJA VERDADEIRA.
	SELECT NOME, SEXO
	FROM LOGIN
	WHERE UF = 'SP'
	OR UF = 'MG'
	GO

--AND--> PARA QUE A SAIDA SEJA VERDADEIRA TODAS AS CONDICOES PRECISAM SER VERDADEIRAS.
	SELECT IDADE, DOACAO
	FROM LOGIN
	WHERE IDADE > 20
	AND EMAIL LIKE '%GMAIL%'
	GO

--AND E OR--
	SELECT NOME, IDADE, SEXO, EMAIL, DOACAO, UF
	FROM LOGIN
	WHERE IDADE < 60
	AND (UF = 'RJ' OR SEXO = 'M')
	GO

--ADICIONE REQUISIÇOES NA OREDEM DE: (OR - MAIORES DADOS PRIMEIRO) , (AND - MENORES DADOS PRIMEIRO)--

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 7 +
/*INSERINDO VALORES - TABELA*/
	INSERT INTO LOGIN VALUES('PEDRO', 26, 'M', 'PEDROCA261@GMAIL.COM', 367.99, NULL)
	GO
	--Os valores devem ser inseridos na mesma ordem das colunas - Caso um valor não exista, insirea NULL 


	INSERT INTO LOGIN(SEXO, DOACAO, IDADE, NOME, EMAIL, UF) VALUES('F', 54.60, 18, 'ANA', 'ANA@GLOBO.COM', 'SP')
	GO
	--Aqui os valores serão inseridos na ordem em que foram ditados


	INSERT INTO LOGIN VALUES('DUDA', 34, 'F', 'DUDALOUCA34@GMAIL.COM', 9.50, 'RJ'),
							('JOÃO', 41, 'M', NULL, 27.30, 'SP')
	GO
	--Forma mais rapida de inserção de dados


--COMO INSERIR TAIS VALORES--
	DATA        -- AAAA/MM/DD
	PRIMARY KEY -- Não se deve inserir valor nenhum

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 8 +
/*MODIFICANDO VALORES - TABELA*/
	UPDATE CLIENTE
	SET EMAIL = 'JOAOA@OUTLOOK.COM.BR'
	WHERE NOME = 'JOAO' --> Sempre ultilize o WHERE para identificar em qual coluna o valor deve ser ALTERADO/INSERIDO
	GO

	UPDATE CLIENTE
	SET TELEFONE = '7391-3728'
	WHERE CPF = 85548962
	GO

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 9 +
/*DELETANDO VALORES - TABELA*/
	DELETE FROM CLIENTE
	WHERE NOME = 'ANA'
	GO

	DELETE FROM CLIENTE
	WHERE NOME = 'CARLA'
	AND EMAIL = 'LILIAN@HOTMAIL.COM' --> Deletará os valores que corresponderem a "AMBOS" os requisitos
	GO

	DELETE FROM CLIENTE
	WHERE NOME = 'CARLA'
	OR EMAIL = 'LILIAN@HOTMAIL.COM' --> Deletará todos os valores que corresponderem a "QUALQUER" um dos requisitos
	GO

--Sempre verificar antes de deletar (Ultilize a mesma sintaxe porem com o comando - SELECT *)
	SELECT * FROM CLIENTE
	WHERE NOME = 'CARLA'
	AND EMAIL = 'LILIAN@HOTMAIL.COM'
	GO

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 10 +
/*DELETAR TABELAS E DATABASES*/
	DROP TABLE CLIENTE
	GO
	DROP DATABASE PROJETO
	GO

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 11 +
/*USUARIO ATUAL*/
	SELECT SUSER_NAME()
	GO
	--(DICA) Ultilize na hora da insersao/update de dados para inserir o nome do usuario atual

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 12 +
/*IDENTITY*/
	-- O comando IDENTITY geralmente é ultilizado na frente de uma PRIMARY KEY, sua função é de incrementar um valor
	-- Numerico automaticamente sempre que um novo valor é inserido
	IDCLIENTE INT PRIMARY KEY IDENTITY

	--Porem o IDENTITY tambem tem outra função
	@@IDENTITY

	--Este comando traz o valor numerico do ultimo IDENTITY inserido
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 13 +
/*PADRONIZAÇÃO*/
	TB_  --> TABELA
	TR_  --> TRIGGERS
	PK_  --> PRIMARY KEY
	FK_  --> FOREIGN KEY


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 14 +
/*BULK INSERT - IMPORTAÇÃO DE ARQUIVOS*/
	BULK INSERT CONTABILIDADE
	FROM 'C:\ARQUIVOS SQL\CONTAS.txt'        <<-- Caminho do arquivo
	WITH
	(
		FIRSTROW = 2,  <------------------ Em que linha do arquivo começa (Começa na linha 2)
		DATAFILETYPE = 'char',  <--------- Tipo de arquivo (Arquivo de texto)
		FIELDTERMINATOR = '\t', <--------- Qual delimitador (TAB, termina a cada espaço)
		ROWTERMINATOR = '\n' <------------ Quando que a linha termina (ENTER, termina com um Enter)
	)

\t -> Significa TAB (Espaço)
\n -> Significa ENTER 

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--*********************************************************************************************************************************************--**************************--
--*********************************************************************************************************************************************--**************************--
--*********************************************************************************************************************************************--**************************--

/*SUMARIO*/
CAPTULO 2 - CRIANDO TABELAS

15- TABELAS - BASICO
16- TABELAS - AVANÇADO / AUTO RELACIONAMENTO
17- TABELA ASSOCIATIVA
18- CONSTRAINTS
19- ALTER TABLE - ALTERANDO UMA TABELA

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 15 +
/*TABELAS - BASICO*/

	CREATE TABLE USUARIO(
		IDUSUARIO INT    PRIMARY KEY IDENTITY,
		NOME VARCHAR(30) NOT NULL,
		SEXO CHAR (1)    NOT NULL,
		IDADE INT        NOT NULL,
		DOACAO NUMERIC(10,2),
		CPF VARCHAR(13)  UNIQUE
	)
	GO

--TIPOS DE DADOS--
	VARCHAR -- Caracteres Variaveis
	CHAR    -- Caracteres Fixos
	INT     -- Numeros inteiros
	NUMERIC -- Numeros não inteiros (Total de casas, Casas depois da virgula)
	MONEY   -- Vem como padrão duas casas depois da virgula (---.00)
	BLOB    -- Fotos e Documentos
	TEXT    -- Textos extenços 
	DATE    -- Inserir data ('AAAA-MM-DD') -> (VEJA MAIS NO PARAGRAFO XX)
	DATETIME-- Ultiliza-se para mostrar data_hora atual em conjunto com GATEDATE()



--CARACTERISTICAS DAS COLUNAS--
	PRIMARY KEY  -- Chave primaria de uma tabela (VEJA MAIS NA LINHA - XX)
	IDENTITY     -- Define que aquela coluna sera auto incrementada com dados (VEJA MAIS NA LINHA - XX)
	NOT NULL     -- Obriga que seja inserido qualquer valor naquela coluna
	UNIQUE       -- Limita que o valor ali inserido seja unico e não possa ser novamente inserido em outra coluna


	CHECK   -- Para valores que quer que sejam Fixos ('COLUNA' - IN - 'TIPO' - CHECK - (VALORES NAO VARIAVEIS) 
			   SEXO CHAR CHECK (SEXO IN ('F', 'M'))

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 16 +
/*TABELAS - AVANÇADO*/

	CREATE TABLE USUARIO(
		IDUSUARIO INT PRIMARY KEY IDENTITY,
		NOME 	  VARCHAR(30) NOT NULL,
		IDADE 	  INT NOT NULL,
		CPF 	  VARCHAR(13) UNIQUE,
		SEXO 	  CHAR CHECK NOT NULL
				  (SEXO IN ('F', 'M')),
	)
	GO

	CREATE TABLE ENDERECO(
		IDENDERECO INT PRIMARY KEY IDENTITY (100,10),  <----- Podemos inserir parametros para a PRIMARY KEY
		RUA 	   VARCHAR(50) NOT NULL,                    - (COMEÇA DO 100, INSERE DE 10 EM 10)
		BAIRRO 	   VARCHAR(50) NOT NULL,
		CIDADE 	   VARCHAR(50) NOT NULL,
		UF 		   CHAR(2) NOT NULL,
		ID_USUARIO INT UNIQUE  <-------- Primeiro se cria a chave estrangeira com o mesmo valor da tabela principal (INT)
	                                   - Dependendo de cada relacionamento adicione o comando
                                       - (1,1) Com UNIQUE
                                       - (0,N) Sem UNIQUE	
	)
	GO

--PARA INTER RELACIONAR FOREIGN KEYs É NESCESARIO CRIAR CONSTRAINTS--
	ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_USUARIO  
	FOREIGN KEY(ID_USUARIO) REFERENCES USUARIO(IDUSUARIO)
	GO 

¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨
--TABELAS COM AUTO RELACIONAMENTO--	
		CREATE TABLE CURSOS(
		IDCURSO   INT PRIMARY KEY IDENTITY,
		NOME      VARCHAR(30),                  <<--Tanto a PK quanto a FK ficam na mesma tabela
		HORAS     INT,
		ID_PREREQ INT  
	)
	GO

	ALTER TABLE CURSOS ADD CONSTRAINT FK_PREREQ
	FOREIGN KEY(ID_PREREQ) REFERENCES CURSOS(IDCURSO)
	GO

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 17 +
/*TABELA ASSOCIATIVA*/
--QUANDO LIDAMOS COM CHAVE ESTRANGEIRA (FK), DEVEMOS ESCOLHER A ONDE A CHAVE IRA FICAR
EM RELACIONAMENTO (1 X 1) A CHAVE FICA NA TABELA MAIS FRACA
EM RALACIONAMENTO (1 X N) A CHAVE FICA NO LADO N

MAS QUANDO O RELACIONAMENTO É (N X N) DEVEMOS CRIAR UMA NOVA TABELA (TABELA ASSOCIATIVA)

	CREATE TABLE CARRO_COR(
		ID_CARRO INT,
		ID_COR INT,
		PRIMARY KEY(ID_CARRO,ID_COR)          <<--SE TRATA DE UMA TABELA QUE UNE VARIAS FKs
	)

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

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 18 +
/*CONSTRAINTS*/

--FOREIGN KEY--
	ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_USUARIO 
	FOREIGN KEY(ID_USUARIO) REFERENCES CLIENTE(IDUSUARIO)
	GO   

--PRIMARY KEY--
	ALTER TABLE USUARIO ADD CONSTRAINT PK_USUARIO  
	PRIMARY KEY(IDUSUARIO)
	GO

--AUTO RELACIONAMETO FK--
	ALTER TABLE CURSOS ADD CONSTRAINT FK_PREREQ
	FOREIGN KEY(ID_PREREQ) REFERENCES CURSOS(IDCURSO)
	GO

--CHECK--
	ALTER TABLE USUARIO ADD CONSTRAINT CK_SEXO 
	CHECK (SEXO IN('M','F'))
	GO


--MANUAL DE CRIAÇAO (Valor entre '' são os valores que mudão)--
	FK - FOREIGN KEY
	PK - PRIMARY KEY
	PRINCIPAL - TABELA À SER INTERLIGADA

	ALTER TABLE 'NOME DA TABELA FK' ADD CONSTRAINT 'FK_(TABELA FK)_(PRINCIPAL)'
	FOREIGN KEY 'NOME DA CULUNA FK' REFERENCES 'PRINCIPAL(PK PRINCIPAL)'

	--É importante normalizar a forma que se cria as contraints--
	FK_Tabela FOREIGN KEY_Tabela PRIMARY KEY
	PK_Tabela da PK
	CK_Nome da coluna de CHECK

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 19 +
/*ALTER TABLE - ALTERANDO UMA TABELA*/ 
--CHANGE - ALTERANDO O NOME--
	ALTER TABLE CLIENTE
	CHANGE NOME 
	SEXO VARCHAR(30) NOT NULL     <<-- ALTERA O NOME DE UMA COLUNA
	GO

	ALTER TABLE CLIENTE            <<-- ALTERA O NOME DE UMA TABELA
	RENAME ALUNOS
	GO

--ALTER COLUMN - ALTERANDO O TIPO--
	ALTER TABLE CLIENTE
	ALTER COLUMN SEXO CHAR(2) NOT NULL
	GO

--ADICIONANDO COLUNAS--

	ALTER TABLE CLIENTE
	ADD CPF INT (11) NOT NULL                  <<--SERA ADICIONADO POR ULTIMO
	GO


	ALTER TABLE CLIENTE
	ADD COLUMN CPF INT(11) NOT NULL
	AFTER NOME_PRODUTO                         <<--EM UMA ORDEM ESPECIFICA
	GO


	ALTER TABLE CLIENTE
	ADD COLUMN CPF INT(11) NOT NULL
	FIRST                                      <<-- SERA A PRIMEIRA
	GO


	ALTER TABLE CLIENTE 
	ADD PRIMARY KEY (SEXO)
	GO

--APAGANDO UMA COLUNA--
	ALTER TABLE PRODUTO
	DROP COLUMN PESO
	GO

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--*********************************************************************************************************************************************--**************************--
--*********************************************************************************************************************************************--**************************--
--*********************************************************************************************************************************************--**************************--

/*SUMARIO*/
CAPTULO 3 - VIZUALIZANDO

20- MOSTRAR - TABELAS
21- DESCREVENDO COLUNAS
22- VISUALIZAR DADOS - TABELA
23- COMANDO JOIN
24- FUNÇÃO ISNULL
25- GROUP BY - CONTANDO E AGRUPANDO
26- ORDER BY - ORDENANDO PROJEÇOES
27- MAX, MIN E MEDIA
28- SUBQUERYES
29- COMANDOS DE DATA
30- CONVERSÃO DE DADOS
31- CONCATENAÇÃO
32- CHARINDEX
33- DECLARE

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 20 +
/*MOSTRAR - TABELAS*/
	SELECT * FROM information_schema.tables
	GO

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 21 +
/*DESCREVENDO COLUNAS*/
--DESCRIÇÃO BASICA--
	SP_COLUMNS ALUNO
	GO

--DESCRIÇÃO DETALHADA--
	SP_HELP ALUNO
	GO

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 22 +
/*VISUALIZAR DADOS - TABELA*/
	SELECT NOME, IDADE  
	FROM LOGIN
	GO

	SELECT NOME AS DOADORES
	FROM LOGIN
	GO
	--O comando "AS" funciona como um nomeador de uma coluna da tabela--

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 23 +
/*COMANDO JOIN*/ --Se trata de um comando de ligação entre tabelas
--PROJETANDO VALORES DE MAIS DE UMA TABELA--
	SELECT C.NOME, 
		   C.SEXO, 
		   E.BAIRRO, 
		   E.CIDADE, 
		   T.TIPO, 
		   T.NUMERO <--- Para melhor perfomance, pontere 
	FROM CLIENTE C
		INNER JOIN ENDERECO E
			ON C.IDCLIENTE = E.ID_CLIENTE  <--- Indicar pelo ponteiramento a qual tabela se refere
		INNER JOIN TELEFONE T
			ON C.IDCLIENTE = T.ID_CLIENTE
	GO

--INNER JOIN-- (Liga todos os valores pedidos de ambas as tabelas)
	SELECT C.NOME, 
		   T.NUMERO AS CELULAR, 
		   E.ESTADO

	FROM CLIENTE C
	      INNER JOIN ENDERECO E 
	      ON C.IDCLIENTE = E.ID_CLIENTE
	      INNER JOIN TELEFONE T
	      ON C.IDCLIENTE = T.ID_CLIENTE
	GO

--LEFT JOIN-- (Chama todos os valores do "CENTRO" e da primeira tabela)
	SELECT C.NOME AS CURSO, 
		   C.VALOR AS VALOR, 
		   C.HORAS AS CARGA, 
		   IFNULL(P.NOME, "---") AS PREREQ

	FROM CURSOS C 
		LEFT JOIN CURSOS P
		ON P.IDCURSO = C.ID_PREREQ
	GO

--RIGHT JOIN-- (Chama todos os valores do "CENTRO" e da segunda tabela)

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 24 +
/*FUNÇÃO ISNULL*/ --Ultiliza-se para uma coluna que mostre valor NULL apresentar outro resultado
--ISNULL()--
	SELECT  A.NOME, 
			ISNULL(T.TIPO, 'SEM') AS "TIPO", 
			ISNULL(T.NUMERO,'NUMERO') AS "TELEFONE",   <<-- (1º Campo - Qual coluna / 2º Campo - Como chamar)
			E.BAIRRO, 
			E.UF

		FROM ALUNO A 
		LEFT JOIN TELEFONE T
		ON A.IDALUNO = T.ID_ALUNO
		INNER JOIN ENDERECO E
		ON A.IDALUNO = E.ID_ALUNO
	GO

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 25 +
/*GROUP BY - CONTANDO E AGRUPANDO*/

--COUNT = QUANTIDADE DE ITENS--
	SELECT COUNT(*) AS 'NUMERO DE LOGINS'
	FROM LOGIN
	GO

--GROUP BY = QUAL TOPCO SERA CONTABILIZADO E LISTADO--
	SELECT SEXO, COUNT(*)
	FROM LOGIN
	GROUP BY SEXO
	GO

--ORDER BY = DETERMINA A ORDEM EM QUE SERA APRESENTADO--
	SELECT IDADE, COUNT(*)
	FROM LOGIN 
	GROUP BY IDADE
	ORDER BY 1
	GO

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 26 +
/*ORDER BY - ORDENANDO PROJEÇOES*/
+--------+-------+                                               
| NUMERO | NOME  |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
+--------+-------+                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
|      1 | JOAO  |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
|      1 | MARIA |     --Com o comando de ORDER BY podemos chamar pelo nome ou                                                                                                                                                                                                                                                                                                                                                                                                                          
|      2 | ZOE   |     --pelo mumero em relação a quando ela aparece                                                                                                                                                                                                                                                                                                                                          
|      2 | ANDRE |                                                                                                                                                                                                                                                                     
+--------+-------+                                                                                                                                                                                      
     1       2 

-- ORDENAGEM BASICA --
	SELECT * FROM ALUNOS				
	ORDER BY NUMERO
	GO					

	SELECT * FROM ALUNOS
	ORDER BY 2
	GO 
-- ORDENANDO POR MAIS DE UMA COLUNA --
	SELECT * FROM ALUNOS				
	ORDER BY NUMERO, NOME
	GO				

	SELECT * FROM ALUNOS
	ORDER BY 1, 2
	GO
-- MESCLANDO ORDER BY COM PROJECAO --
	SELECT NOME FROM ALUNOS    <<-- Agrupando com projeção deve ser feita 
	ORDER BY 1, 2                -- pedindo a tabela pelo nome
	GO

	SELECT NOME FROM ALUNOS
	ORDER BY NUMERO, NOME
	GO

-- ORDER BY DECRESCENTE / ASCENDENTE --
	SELECT * FROM ALUNOS
	ORDER BY 1 ASC
	GO

	SELECT * FROM ALUNOS
	ORDER BY 1 DESC
	GO                                                                                       

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 27 +
/* MAX, MIN E MEDIA*/
--MAX - TRAZ O VALOR MAXIMO DE UMA COLUNA--
	SELECT MAX(FEVEREIRO) AS MAIOR_FEV
	FROM VENDEDORES
	GO

--MIN - TRAZ O VALOR MINIMO DE UMA COLUNA--
	SELECT MIN(FEVEREIRO) AS MENOR_FEV
	FROM VENDEDORES
	GO

--AVG - TRAZ O VALOR MEDIO DE UMA COLUNA--
	SELECT AVG(FEVEREIRO) AS MEDIA_FEV
	FROM VENDEDORES
	GO

--SUM - TRAZ A SOMA TOTAL DE UMA COLUNA--
	SELECT SUM(JANEIRO) AS TOTAL_JAN
	FROM VENDEDORES
	GO

	SELECT SEXO, SUM(MARCO) AS TOTAL_MARCO
	FROM VENDEDORES
	GROUP BY SEXO
	GO

--VARIAS FUNCOES--
	SELECT MAX(JANEIRO) AS MAX_JAN,
       	   MIN(JANEIRO) AS MIN_JAN,
	       AVG(JANEIRO) AS MEDIA_JAN
	FROM VENDEDORES
	GO
	 
--TRUNCATE - DEFINE O NUMERO DE CASAS DEPOIS DA VIRGULA-- 
	SELECT       AVG(JANEIRO)    AS MEDIA_JAN1,
	TRUNCATE    (AVG(JANEIRO),1) AS MEDIA_JAN2
	FROM VENDEDORES
	GO

		+---------------+------------+
		| MEDIA_JAN1    | MEDIA_JAN2 |
		+---------------+------------+
		| 124429.901794 |   124429.9 |
		+---------------+------------+

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 28 +
/*SUBQUERYES*/
--Nome de quem vendeu menos e mais--
	SELECT NOME, MARCO FROM VENDEDORES
	WHERE MARCO = (SELECT MIN(MARCO) FROM VENDEDORES)   <<-- Se chama SUBQUERY justamente por ser 
    GO                                                    -- um comando dentro de um comando

	SELECT NOME, MARCO FROM VENDEDORES
	WHERE MARCO = (SELECT MAX(FEVEREIRO) FROM VENDEDORES)
	GO

--Quem vendeu acima da media--
	SELECT NOME, FEVEREIRO FROM VENDEDORES
	WHERE FEVEREIRO > (SELECT AVG(FEVEREIRO) FROM VENDEDORES)
	GO

--Subquery dentro de um INSERT--
	INSERT INTO RESULTADO VALUES((SELECT 10 + 10))
	GO

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 29 +
/*COMANDOS DE DATA*/
--DATA_HORA ATUAL--
	SELECT GETDATE()
	GO


--DATEDIFF -- Calcula a diferenca entre 2 datas
	       -- PEDE TRES VALORES  ->> (AGRUPAMENTO [DAY,MONTH,YEAR], COMEÇO, TERMINO)

	SELECT NOME, DATEDIFF(DAY,NASCIMENTO,GETDATE())  --> (AGRUPE POR DIA; COMECE PELA TB NASC.; TERMINE NA HORA ATUAL)
	AS "IDADE"
	FROM ALUNO
	GO

	--DUAS FORMAS DE TRAZER UM VALOR (EX: ANO)
	SELECT NOME, (DATEDIFF(DAY,NASCIMENTO,GETDATE())/365) AS "IDADE"     <<-- (NUM. DE DIAS/POR 365)
	FROM ALUNO
	GO

	SELECT NOME, DATEDIFF(YEAR,NASCIMENTO,GETDATE()) AS "IDADE"          <<-- (Agrupe por Ano)
	FROM ALUNO
	GO


--DATENAME - Traz o resultado em nome da coluna requisitada (EM 'STRING' - NOME)
	SELECT NOME, DATENAME(MONTH, NASCIMENTO)
	FROM ALUNO
	GO

	SELECT NOME, DATENAME(YEAR, NASCIMENTO)
	FROM ALUNO
	GO

	--Traz ate mesmo em que dai da semana foi inserido
	SELECT NOME, DATENAME(WEEKDAY, NASCIMENTO)
	FROM ALUNO
	GO

--DATEPART - Traz o nome e data de uma coluna porem o valor é (EM INT - NUMERO) --
	SELECT NOME, DATEPART(MONTH,NASCIMENTO)
	FROM ALUNO
	GO

--DATEADD - Adiciona uma quantidade de tempo em uma data (EM INT - NUMERO) --
	SELECT DATEADD(DAY,365,GETDATE())        <<-- Adicione 365 Dias a data atual
	GO

	SELECT DATEADD(YEAR,10,NASCIMENTO)       <<-- Adicione 10 Anos em cada valor da coluna NASCIMENTO
	FROM ALUNO
	GO

--Tambem pode combinar mais de um comando DATE--
	SELECT NOME, DATEPART(MONTH,NASCIMENTO), DATENAME(MONTH, NASCIMENTO)
	FROM ALUNO
	GO


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 30 +
/*CONVERSÃO DE DADOS*/ -- EX: DE VARCHAR PARA INT
	CAST (RESULTADO AS VARCHAR)


--CAST--
	SELECT CAST('1' AS INT) + CAST('1' AS INT)     <<-- CAST(TRANSFORME ESTE VALOR EM INT)
	GO
	--Leve em consideração que nem sempre o valor podera ser convertido--

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 31 +
/*CONCATENAÇÃO - (AGRUPAMENTO DE VALORES)*/

	SELECT NOME,
	CAST (DAY(NASCIMENTO)   AS VARCHAR) + '/' +                    --|CAST  -> Transforme o dia de nascimento em varchar  
	CAST (MONTH(NASCIMENTO) AS VARCHAR) + '/' +                  <<--|PARA JUNTAR TUDO, TODOS OS VALORES DEVEM SER VARCHAR
	CAST (YEAR(NASCIMENTO)  AS VARCHAR) AS "NASCIMENTO"            --|Agora junte tudo em - (19/03/1967)   

	FROM ALUNO
	GO

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 32 +
/*CHARINDEX*/ -- Procura algo e diz em qual posição se encontra (conta por letra)
	SELECT NOME, CHARINDEX('O que, Onde , Apartir de') AS INDICE
	GO

	SELECT NOME, CHARINDEX('A', NOME) AS INDICE
	FROM ALUNO
	GO
    -- O parametro 'Apartir de' nao é obrigatorio. A contagem padrão inicia em 01

	+-------+---------+                                               
	| NOME  | INDICE  |     <<-- Trouxe uma pesquisa de quando aparece a palavra 'A' em NOME                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
	+-------+---------+                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
	| ANDRE | 1       |       -- ANDRE aparece 'A'      - PRIMEIRA POSIÇÃO = 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
	| ANA   | 1       |       -- ANA   aparece 'A'      - PRIMEIRA POSIÇÃO = 1  (O QUE IMPORTA É A PRIMEIRA)                                                                                                                                                                                                                                                                                                                                                                                                           
	| RUI   | 0       |       -- RUI não aparece 'A'    - NENHUMA POSIÇÃO  = 0                                                                                                                                                                                                                                                                                                                           
	| JOAO  | 3       |       -- JOAO  aparece 'A'      - TERCEIRA POSIÇÃO = 3                                                                                                                                                                                                                                                         
	+-------+---------+

	

	SELECT NOME, CHARINDEX('A',NOME,2) AS INDICE    <<--Começa a procurar apartir da segunda posição
	FROM ALUNO                                       
	GO 
                                -- Trouxe uma pesquisa de quando aparece a palavra 'A' em NOME   
	+-------+---------+         -- Porem com parametro '2', ou seja, ignora a primeira posição                                  
	| NOME  | INDICE  |       <<-- ATENÇÃO -> ELE APENAS DESCONSIDERA A 1 POSIÇÃO, MAS CONTINUA CONTANDO DESDE A 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
	+-------+---------+                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
	| ANDRE | 0       |       -- ANDRE aparece 'A'      => DESCONSIDERA A PRIMEIRA POSIÇÃO = 0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
	| ANA   | 3       |       -- ANA   aparece 'A'      => IGNORA A 1, MAS ENCONTRA NA 3   = 3                                                                                                                                                                                                                                                                                                                                                                                                          
	| RUI   | 0       |       -- RUI   não aparece 'A'  => NÃO ENCONTRA                    = 0                                                                                                                                                                                                                                                                                                                          
	| JOAO  | 3       |       -- JOAO  aparece 'A'      => ENCOTRA NA TERCEIRA  POSIÇÃO    = 3                                                                                                                                                                                                                                                        
	+-------+---------+


--TAMBEM PODEMOS ULTILIZAR PARA APLICAR FUNCIONALIDADES EM VALORES ESPECIFICOS
	SELECT CONTA, VALOR, DEB_CRED,
		CHARINDEX('D',DEB_CRED) AS DEBITO, <------------------ Procure por 'D' (ACHOU = 1 / NÃO ACHOU = 0)
		CHARINDEX('C',DEB_CRED) AS CREDITO, <----------------- Procure por 'C' (ACHOU = 1 / NÃO ACHOU = 0)

		CHARINDEX('C',DEB_CRED) * 2 - 1 AS MULTIPLICADOR <--------| Procure por 'C' (ACHOU = 1 / NÃO ACHOU = 0 -> 'D')
	FROM CONTABILIDADE                                          --| Depois com o resultado (0 ou 1) faça a equação * 2 - 1
	GO                                                   

	-- 'C' >> 1 * 2 - 1 = 1
	-- 'D' >> 0 * 2 - 1 = -1

	+-------+---------+----------+----------+---------+---------------+
	| CONTA | VALOR   | DEB_CRED | DEBITO   | CREDITO | MULTIPLICADOR |
	+-------+---------+----------+----------+---------+---------------+
	|     1 | 3474656 |        D | 1        | 0       |           -1  |
	|     1 |    4565 |        D | 1        | 0       |           -1  |
	|     1 |  168957 |        C | 0        | 1       |            1  |
	|     7 |     390 |        C | 0        | 1       |            1  |
	|     7 |   85035 |        C | 0        | 1       |            1  |
	|     9 |    1357 |        D | 1        | 0       |           -1  |
	|     2 |     896 |        D | 1        | 0       |           -1  |
	|     2 |    2390 |        C | 0        | 1       |            1  |
	+-------+---------+----------+----------+---------+---------------+


	SELECT CONTA,
		SUM(VALOR * (CHARINDEX('C',DEB_CRED) * 2 - 1)) AS SALDO   <<-- Some a coluna VALOR * o resultado da muliplicação 
	FROM CONTABILIDADE                                              -- de CHARINDEX vista a cima (Resultado (1 ou -1))
	GROUP BY CONTA                                                  -- Quando se soma a -1 o resultado se torna negativo
	GO

	+-------+----------+                                               
	| CONTA | SALDO    |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
	+-------+----------+                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
	|     1 | -3310264 |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
	|     7 |    85425 |                                                                                                                                                                                                                                                                                                                                                                                                                
	|     9 |    -1357 |                                                                                                                                                                                                                                                                                                                                          
	|     2 |     1494 |                                                                                                                                                                                                                                                                     
	+-------+----------+

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 33 +
/*DECLARE - @*/ -- Ultilizamos o declare majoritariamente para Testes
	DECLARE
			@RESULTADO INT
			SET @RESULTADO = (SELECT 50 + 50)
			INSERT INTO RESULTADO VALUES(@RESULTADO)
			GO

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--*********************************************************************************************************************************************--**************************--
--*********************************************************************************************************************************************--**************************--
--*********************************************************************************************************************************************--**************************--

/*SUMARIO*/
CAPTULO 4 - PROGRAMANDO

30- PROCEDURES
31- COMANDO VIEW
32- TRIGGERS I 
33- TRIGGERS II - COMUNICAÇÃO ENTRE BANCOS
34- TRIGGERS III - DANDO UPDATE
35- CURSORES
XX- REGRA DE NEGOCIO NO BD

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 30 +
/*PROCEDURES*/
--PROCEDURE ESTATICA
	CREATE PROCEDURE SOMA
	AS
	SELECT 10 + 10 AS SOMA  <<-- QUALQUER PROGRAMACAO
	GO

	EXEC SOMA  <------------ Chamando a procedure

--PROCEDURES COM PARAMETROS--
	CREATE PROCEDURE CONTA @NUM1 INT, @NUM2 INT
	AS
	SELECT @NUM1 + @NUM2 AS RESULTADO
	GO

	EXEC CONTA 90,110
	--Retorna 200

--PROCEDURES EM TABELAS--
	CREATE PROCEDURE TELEFONES @TIPO CHAR(3)
	AS
		SELECT NOME, NUMERO
		FROM USUARIO
		INNER JOIN TELEFONE
		ON IDCLIENTE = ID_CLIENTE
		WHERE TIPO = @TIPO  <--------------------------- TIPO aqui se refere a coluna (TIPO) da tabela telefone
	GO

	EXEC TELEFONES 'CEL'
	GO
	EXEC TELEFONES 'COM'
	GO

--PROCEDURE COM OUTPUT (SAIDA)
	CREATE PROCEDURE PEGARTIPO @TIPO CHAR(3), @CONTADOR INT OUTPUT
	AS
		SELECT @CONTADOR = COUNT(*)
		FROM TELEFONE
		WHERE TIPO = @TIPO
	GO

	DECLARE @SAIDA INT

	EXEC GETTIPO 'CEL', @SAIDA OUTPUT
	SELECT @SAIDA
	GO
	--Retorna o numero de telefones (CEL)

--DELETANDO A PROCEDURE
	DROP PROC CONTA

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 31 +
/*COMANDO VIEW*/ --FORMA DE MOSTRAR UMA TABELA COM UM COMANDO PRONTO--

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
	ON C.IDCLIENTE = E.ID_CLIENTE
	GO


	SELECT NOME, NUMERO, ESTADO       <<-- FORMA DE CHAMAR A QUERY
	FROM V_RELATORIO
	GO

/*ALGUNS COMANDOS NAO FUNCIONÃO EM UMA TABELA VIEW*/
	-EM TABELAS COM JOIN NAO SÃO PERMITIDOS COMANDOS INSERT E DELETE
	-POREM SEMPRE EM TODAS AS TABELAS VIEW SÃO PERMITIDOS COMANDOS DE UPDATE

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 32 +
/*TRIGGERS I - MANUAL*/
--CONCEITOS IMPORTANTÍSSIMOS PARA TRIGGER--
	Toda vez que algo é inserido e apagado do banco SQL SERVER, este dado fica armazenado em uma memoria temporaria
	onde os inseridos ficam na INSERTED e os deletados ficam na DELETED

	Uma trigger pode ser criada com a ação de INSERT, DELETE E UPDATE
	Porem é importante saber por onde chamar os comandos

	INSERT ->> INSERTED
	DELETE ->> DELETED

	UPDATE ->> INSERTED E DELETED

	Valores vindos de tabelas são inseridos com o comando SELECT
	Valores vindos de funcoes ou valores literais devem ser atribuidos com o comando SET



--MANUAL DE CRIAÇÃO (Trigger olhando para a tabela inteira)
	CREATE TRIGGER TR_...
	ON DBO.PRODUTOS  <-------------- (DBO.) + Nome da tabela que sera puxado os valores
	FOR INSERT/DELETE/UPDATE  <----- Escolha o comando para a Trigger
	AS  <--------------------------- Inicia a Trigger

		DECLARE @...  <------------- Primeiro chame as colunas que quer (Atualizar, Inserir ou Deletar)
		DECLARE @NOME VARCHAR(30)
		DECLARE @EMAIL_VELHO VARCHAR(30)
		DECLARE @EMAIL_NOVO VARCHAR(30)
		DECLARE @DATA DATETIME


		SELECT @NOME  = NOME  FROM INSERTED  <------ Faça as ligacoes de DECLARE com o nome da coluna na tabela 
		SELECT @EMAIL_VELHO = EMAIL FROM DELETED        -- + Comando de onde fica armazenado os valores 
		SELECT @EMAIL_NOVO  = EMAIL FROM INSERTED       -- (Combine para o UPDATE)


		SET @DATA = DETDATE()


		INSERT INTO HISTORICO
		(NOME, EMAILVELHO, EMAILNOVO)  <--------- Colunas da tabela onde serão inseridas
		VALUES
		(@NOME, @EMAIL_VELHO, @EMAIL_NOVO)  <---- Os valores ao qual serão inseridos

		PRINT 'TRIGGER EXECUTADA COM SUCESSO' <-- Podemos emitir uma mensagem personalizada

	GO

¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨
--MANUAL DE CRIAÇÃO (Trigger olhando para uma coluna apenas - EMAIL)
	CREATE TRIGGER TR_...
	ON DBO.PRODUTOS
	FOR UPDATE AS
	IF UPDATE(EMIAL)
	BEGIN
			[COMANDOS]
	END
	GO

/*TRIGGER DIMINUIDA*/
	CREATE TRIGGER TR_...
	ON DBO.PRODUTOS
	FOR UPDATE AS
	IF UPADATE(EMAIL)
	BEGIN
			INSERT INTO HISTORICO
			(NOME, EMAILVELHO, EMAILNOVO, DATA)
			
			SELECT I.NOME, D.EMAIL, I.EMAIL, GETDATE()  <--- Colunas de onde buscará o valor e 
			                                              -- ponteiramento para em que armazenamento procurar

			FROM DELETED D, INSERTED I  <------------------- Defina as regras do ponteiramento
			WHERE D.IDPRODUTO = I.IDPRODUTO <--------------- Se organize para não haver imprevistos

	END
	GO

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 33 +
/*TRIGGERS II - EXEMPLO*/
--CRIANDO A TRIGGER--
	CREATE TRIGGER TR_ATUALIZA_PRECO
ON DBO.PRODUTOS
FOR UPDATE
AS
		DECLARE @IDPRODUTO INT
		DECLARE @PRODUTO VARCHAR(30)
		DECLARE @CATEGORIA VARCHAR(10)
		DECLARE @PRECO NUMERIC(10,2)
		DECLARE @PRECONOVO NUMERIC(10,2)
		DECLARE @DATA DATETIME
		DECLARE @USUARIO VARCHAR(30)
		DECLARE @ACAO VARCHAR(100)

		--PRIMEIRO BLOCO
		SELECT @IDPRODUTO = IDPRODUTO FROM inserted
		SELECT @PRODUTO = NOME FROM inserted
		SELECT @CATEGORIA = CATEGORIA FROM inserted
		SELECT @PRECO = PRECO FROM deleted
		SELECT @PRECONOVO = PRECO FROM inserted

		--SEGUNDO BLOCO
		SET @DATA = GETDATE()
		SET @USUARIO = SUSER_NAME()
		SET @ACAO = 'VALOR INSERIDO PELA TRIGGER TRG_ATUALIZA_PRECO'

		INSERT INTO HISTORICO
		(PRODUTO,CATEGORIA,PRECOANTIGO,PRECONOVO,DATA,USUARIO,MENSAGEM)
		VALUES
		(@PRODUTO,@CATEGORIA,@PRECO,@PRECONOVO,@DATA,@USUARIO,@ACAO)

		PRINT 'TRIGGER EXECUTADA COM SUCESSO'
GO


CREATE TRIGGER TG_SALARIO
ON DBO.EMPREGADO
FOR UPDATE AS
IF UPDATE(SALARIO)
BEGIN
	 INSERT INTO HIST_SALARIO
	 (IDEMPREGADO,ANTIGOSAL,NOVOSAL,DATA)
	 SELECT D.IDEMP,D.SALARIO,I.SALARIO,GETDATE()
	 FROM DELETED D, inserted I
	 WHERE D.IDEMP = I.IDEMP
END
GO

CREATE TRIGGER TG_RANGE
ON DBO.EMPREGADO
FOR INSERT,UPDATE
AS 
	DECLARE
		@MINSAL MONEY,
		@MAXSAL MONEY,
		@ATUALSAL MONEY

	SELECT @MINSAL = MINSAL, @MAXSAL = MAXSAL FROM SALARIO_RANGE

	SELECT @ATUALSAL = I.SALARIO
	FROM INSERTED I

	IF(@ATUALSAL < @MINSAL)
	BEGIN
			RAISERROR('SALARIO MENOR QUE O PISO',16,1)
			ROLLBACK TRANSACTION
	END

	IF(@ATUALSAL > @MAXSAL)
	BEGIN
			RAISERROR('SALARIO MAIOR QUE O TETO',16,1)
			ROLLBACK TRANSACTION
	END
GO

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 35 +
/*CURSORES*/ 
--CONTEXTUALIZAÇÃO--
_________________________________________________           ________________________________
|	CREATE TABLE VENDEDORES(					|	        |	CREATE TABLE VEND_TOTAL(   |
|	IDVENDEDOR INT PRIMARY KEY AUTO_INCREMENT,	|		    |	NOME VARCHAR(50),          |                              
|	NOME VARCHAR(50),						    |           |	JAN INT,                   |                     
|	JAN INT,						            |           |	FEV INT,                   |                     
|	FEV INT,						            |           |	MAR INT,                   |                   
|	MAR INT						                |           |	TOTAL INT,                 |                       
|	)						                    |           |	MEDIA INT                  |                      
|_______________________________________________|           |	)                          |               
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

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 36 +
/*REGRA DE NEGOCIO NO BD*/ -- Organizando os dados vindos do FRONT-END para inserir no BD pulando a programação
	CREATE PROCEDURE CADASTRO 
		@NOME VARCHAR(30), 
		@SEXO CHAR(1), 
		@NASCIMENTO DATE,
		@TIPO CHAR(3), 
		@NUMERO VARCHAR(10)
	AS
		DECLARE @FK INT

		INSERT INTO PESSOA VALUES(@NOME,@SEXO,@NASCIMENTO) --GERAR UM ID

		SET @FK = (SELECT IDPESSOA FROM PESSOA       -- @@IDENTITY - Traz o ultimo valor auto_incrementado(IDENTITY)
				   WHERE IDPESSOA = @@IDENTITY)  <----- inserido em alguma tabela

		INSERT INTO TELEFONE VALUES(@TIPO,@NUMERO,@FK)
	GO


	CADASTRO 'JORGE','M','1981-01-01','CEL','97273822' 
	-- Agora os dados estao organizados e prontos para serem inserido no Banco 

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--*********************************************************************************************************************************************--**************************--
--*********************************************************************************************************************************************--**************************--
--*********************************************************************************************************************************************--**************************--

/*SUMARIO*/
CAPTULO 5 - TERMOLOGIAS

36- TERMOS
37- DML, DDL, DCL, TCL
38- FORMAS NORMAIS
39- BANCOS DE DADOS DO SISTEMA
40- ARQUITETURA SQL SERVER
41- OBRIGATORIEDADE E CADINALIDADE

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 36 +
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
	CHAVE NATURAL    - É uma chave de identificação(PRIMARY KEY) que ja existe naturalmente (EX: CPF)
	CHAVE ARTIFICIAL - É uma chave de identificação(PRIMARY KEY) que foi criada expecificamente para um BANCO (EX: ID)

--FOREIGN KEY--

--CONSTRAINT--

--DICIONARIO DE DADOS--

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 37 +
/*DML, DDL, DCL, TCL*/

	DML - DATA MANIPULATION LANGUAGE --INSERT, DELETE e UPDATE--
	São os comandos que interagem com os dados dentro das tabelas.

	DDL - DATA DEFINITION LANGUAGE --CREATE, ALTER e DROP--
	São os comandos que interagem com os objetos do banco.
	
	DCL - DATA CONTROL LANGUAGE --GRANT, REVOKE E DENY--
	São os comandos para controlar a parte de segurança do banco de dados.

	TCL - TRANSACTION CONTROL LANGUAGE --BEGIN TRANSACTION, COMMIT E ROLLBACK--
	São os comandos para controle de transação.

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 38 +
/*FORMAS NORMAIS*/ -- Regras basicas para a criação de um BANCO --
--PRIMEIRA FORMA NORMAL--

	1. TODO CAMPO VETORIZADO SE TORNARÁ OUTRA TABELA.
	2. TODO CAMPO MULTIVALORADO SE TORNARÁ OUTRA TABELA QUANDO DIVIZIVEL.
	3. TODA TABELA NECESSITA DE PELO MENOS UM CAMPO QUE IDENTIFIQUE TODO O REGISTRO COMO SENDO UNICO (PRIMARY KEY).

--SEGUNDA FORMA NORMAL--
	1. EM UMA TABELA COM MULTIPLAS PKs UMA COLUNA NAO CHAVE (NORMAL) DEVE ATENDER A TOTALIDADE DAS PKs
		EX: IDPACIENTE
			IDMEDICO         -->> Uma coluna [DATA OU DIAGNOSTICO] NESCESSITA DA UNIAO DE TODOS AS PKs
			IDHOSPITAL

--TERCEIRA FORMA NORMAL--
	1. COLUNAS NAO CHAVE QUE DEPENDEM DE OUTRAS COLUNAS NAO CHAVES VIRAM OUTRA TABELA
		EX: IDPACIENTE
			IDMEDICO         <<-- Com a coluna [INTERNAÇÃO] -> O que depende se eu vou ser internado ou não
			IDHOSPITAL         -- Não depende do Paciente, Medico ou do Hospital. E sim do Diagnostico

			SENDO ASSIM EU CRIO UMA NOVA TABELA PARA O DIAGNOSTICO

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 39 +
/*BANCOS DE DADOS DO SISTEMA*/

MASTER (PRINCIPAIS) -- Banco onde fica armazenado todos os PRINCIPAL BANCOS
MODEL (MODELO)  -- Quando é criado um novo banco, ultiliza-se este banco como MODELO
MSDB (DADOS)  -- É onde fica armazenado os DADOS DO BANCO como [DATA, HORA, USUARIO] e principalmente o [INTEGRATION SERVICES]
TEMPDB (TEMPORARIO) -- Aqui os bancos criados são TEMPORARIOS, ou seja, quando desligado se perde os dados [OTIMO PARA TESTES]


REPORTSERVER$SQLEXPRESS -- BANCO DE RELATORIOS DO SISTEMA

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 40 +
/*ARQUITETURA SQL SERVER*/

.MDF -- MASTER DATA FILE (PREENCHE COM DADOS)
.LDF -- LOG DATA FILE (PREENCHE COM DADOS LOGs) BASICAMENTE UM DADO TEMPORARIO QUE PODE OU NAO SER GRAVADO EM MDF

--RECOMENADO--
 *Ultilizar o .MDF apenas para armazenar dados do SISTEMA (DICIONARIO DE DADOS).
 *Criar um novo tipo de arquivo (Geralmente .NDF) e armazenar os dados lá, principalmente segmentado em grupos
 	Ex: Financeiro.ndf   -> G_MKT 
 	    Funcionarios.ndf -> G_RH
 	    Vendas.ndf       -> G_VENDAS
 *Alem de segmentar logicamente (G_MKT), separar fisicamente tambem (Separando cada arquivo em um HD diferente)

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 41 +
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

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--*********************************************************************************************************************************************--**************************--
--*********************************************************************************************************************************************--**************************--
--*********************************************************************************************************************************************--**************************--

CAPTULO 6 - PRODUTIVIDADE  
/*FORMAS DE ECONMIZAR PROCESSAMENTO EM SUA MAQUINA*/



1. NA HORA DE CRIAR UMA TABELA, LEVE EM CONTA QUE CERTOS DADOS SÃO MELHORES APROVEITADOS EM CERTAS TIPAGENS:

VARCHAR --> CARACTER VARIAVEL (MENOS TRAFEGO NA REDE/MAS NECESSITA DE MAIS PROCESSAMENTO)
CHAR    --> CARACTERE FIXO (MENOS PROCESSAMENTO NECESSARIO/POSSIVEL DESPERDICIO DE DADOS = MAIS TRAFEGO NA REDE

-- (MOTIVO)->

2. QUANDO ULTILIZADO TABELA VERDADE (AND/OR), EXISTE UM MACETE PARA A OPTIMIZAÇAO DE DESEMPENHO

OR  --> REQUER Q APENAS UMA DAS VARIAVEIS SEJA VERDADEIRA, SENDO ASSIM, COLOQUE AS VARIAVEIS DE MAIOR VALOR NA FRENTE
AND --> REQUER Q TODAS AS VARIAVEIS SEJAM VERDADEIRA, SENDOA ASSIM, COLOQUE AS VARIAVEIS DE MENOR VALOR NA FRENTE 

-- (MOTIVO)->

3. USANDO O PONTEIRAMENTO

SELECT CLIENTE.NOME, CLIENTE.SEXO, ENDERECO.BAIRRO, ENDERECO.CIDADE, TELEFONE.TIPO, TELEFONE.NUMERO
FROM CLIENTE 
INNER JOIN ENDERECO
ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
INNER JOIN TELEFONE
ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE
GO


SELECT C.NOME, C.SEXO, E.BAIRRO, E.CIDADE, T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE
GO


4. CURSORES

-->CURSORES ULTILIZAM MEMORIA RAM E DEPENDENDO DO TAMANHO PODE JOGAR O DESEMPENHO LA PRA CIMA