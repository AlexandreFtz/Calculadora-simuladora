-- Comando para criar banco de dados
CREATE DATABASE Calculadora_de_Juros;

-- Utilizar o banco de dados
USE Calculadora_de_Juros;

-- CTRL + K + C Comenta
-- CTRL + K + U Descomenta

-- SQL é a linguagem que utilizamos para realizar consultas
-- SQL server é o gerenciador de banco de dados

/*BD Relacionais, onde uma tabela se relaciona com a outra. 
EX:. tabela de usuário, e uma tabela de compras feitas por ele.
Pesquisar mais sobre o assunto também*/

-- Vamos ter apenas duas tabelas, 

--Usuario Simulação
	-- Número da simulação
	-- Nome de pessoa
	-- Descrição da simulação
	-- Data da simulação

CREATE TABLE usuario_simulacao (
	id_simulacao INT NOT NULL,
	nome_pessoa VARCHAR (100) NOT NULL,
	descricao VARCHAR (250),
	data_simulacao DATE NOT NULL
);

-- nomeColuna / TipoDado / Se não permitir nulo NOT NULL

--id_simulacao INT PRIMARY KEY IDENTITY,
--Simulação Calculadora Juros
	-- Valor Inicial
	-- Valor do Aporte do Mês
	-- Taxa de Juros
	-- Quantidade de tempo
	-- Número da simulação

CREATE TABLE simulacao_calculadora_juros (
	id_simulacao INT IDENTITY PRIMARY KEY,
	valor_inicial DECIMAL(15,2) NOT NULL,
	valor_aporte_mensal DECIMAL (15,2) NOT NULL,
	taxa_juros DECIMAL(10,4) NOT NULL,
	quantidade_tempo INT NOT NULL
);

 --SELECIONAR TABELAS 
  SELECT * FROM usuario_simulacao;

  -- SELECIONAR CAMPOS ESPECIFICOS
  SELECT nome pessoa, data_simulacao FROM usuario_simulacao;

  SELECT * FROM simulacao_calculadora_juros;

  -- INSERIR DADOS NA TABELA
  INSERT INTO usuario_simulacao VALUES (1,'Alexandre','Investimentos', GETDATE());

  -- INSERIR DADOS EM ORDEM DE COLUNAS (ORDEM)
  INSERT INTO usuario_simulacao ( id_simulacao ,nome_pessoa, descricao, data_simulacao) VALUES 
                                ( 2,           'Alexandre','Investimentos', GETDATE());
--								                                                                                                 AAAA-MM-DD  
  INSERT INTO usuario_simulacao ( id_simulacao ,nome_pessoa, descricao, data_simulacao) VALUES ( 3,'Alexandre','Investimentos', '2023-02-08');


  INSERT INTO simulacao_calculadora_juros VALUES(5000.00, 200.00, 6, 24);

  -- ATUALIZAR UMA TABELA (SET = passar valor)
  UPDATE usuario_simulacao SET data_simulacao = '2023-02-07' WHERE id_simulacao = 2;
  -- ATUALIZANDO TABELA ONDE O REGISTRO FOR = 3
  UPDATE usuario_simulacao SET data_simulacao = '2023-02-09', descricao = 'Motoca vrum' WHERE id_simulacao = 3;
  -- ATUALIZANDO TABELA ONDE O REGISTRO FOR = 2 e 3
  UPDATE usuario_simulacao SET nome_pessoa = 'Dudu corno' WHERE id_simulacao IN(2,3);

  -- MUDAR TUDO (SEM WHERE)
  UPDATE usuario_simulacao SET nome_pessoa = 'Alexandre';

   --SELECIONAR TABELAS (Utilizar para aparecer tabela)
  SELECT * FROM usuario_simulacao;

  -- DELETAR REGISTRO DA TABELA
  DELETE FROM usuario_simulacao WHERE id_simulacao = 1;
  DELETE FROM simulacao_calculadora_juros WHERE id_simulacao = 2;

     -- DELETANDO A TABELA
  DROP TABLE simulacao_calculadora_juros
  DROP TABLE usuario_simulacao

-- Inserir novo registro
-- Atualizar a data de simulacao do registro 
-- Selecionar apenas data simulacao e nome da pessoa
-- Deletar o registro
 
-- SELECIONAR TODAS AS COLUNAS DE TODAS AS TABELAS COM JOIN
SELECT *
  FROM usuario_simulacao AS a  
  JOIN simulacao_calculadora_juros AS b  -- JOIN é para juntar   
    ON a.id_simulacao = b.id_simulacao   -- ON é para dizer quais colunas se interligam
 WHERE a.id_simulacao = 4;


-- SELECIONAR COLUNAS QUE EU QUERO COM JOIN
SELECT b.id_simulacao
	   ,a.nome_pessoa
	   ,a.descricao
	   ,a.data_simulacao
	   ,b.valor_inicial
	   ,b.valor_aporte_mensal
	   ,b.taxa_juros
	   ,b.quantidade_tempo
  FROM usuario_simulacao AS a  
  JOIN simulacao_calculadora_juros AS b  -- JOIN é para juntar   
    ON a.id_simulacao = b.id_simulacao   -- ON é para dizer quais colunas se interligam
 WHERE a.id_simulacao = 1;

 -- organizar ordem
 -- Order by ( asc e desc = crescente e decrescente)
 -- Between é usado para encontrar valor entre um valor mínimo e um valor maior ( Between 10 And 15;)

 CREATE DATABASE teste_csv; 

USE teste_csv;

CREATE TABLE usuarios (
	nome_usuario VARCHAR(200) NOT NULL,
	ativo BIT NOT NULL,
	data_nascimento DATETIME NOT NULL
);

SELECT * FROM usuarios

BULK INSERT usuarios
FROM 'C:\Users\ricar\Downloads\teste.csv'
   WITH ( FIELDTERMINATOR = ';', ROWTERMINATOR = '\n' );

-- 0 = Falso = Não
-- 1 = Verdadeiro = Sim

-- SUBQUERY -- SELECIONAR UMA INFORMAÇÃO A PARTIR DO RESULTADO DE OUTRA
-- SELECT dentro de um SELECT

SELECT * FROM usuario_simulacao 
where id_simulacao = (select max (id_simulacao) from simulacao_calculadora_juros)

SELECT * FROM usuario_simulacao 
where id_simulacao = 3



































