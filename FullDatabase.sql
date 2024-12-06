CREATE DATABASE clinica;
USE clinica;

-- criação do tabela paciente
CREATE TABLE PACIENTE
(
ID_paciente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome_paciente VARCHAR(80) NOT NULL,
cpf_paciente VARCHAR(14) NOT NULL UNIQUE,
sexo_paciente CHAR(1) NOT NULL,
nascimento_paciente DATE,
celular_paciente VARCHAR(20),
endereco_paciente VARCHAR(80),
bairro_paciente VARCHAR(50),
cidade_paciente VARCHAR(50),
cep_paciente VARCHAR(09)
);


-- criação do tabela area
CREATE TABLE AREA
(
CODIGO_AREA INT NOT NULL PRIMARY KEY,
NOME_AREA VARCHAR(30) NOT NULL
);


-- criação do tabela profissional
CREATE TABLE PROFISSIONAL
(
CODIGO_PROFISSIONAL INT NOT NULL PRIMARY KEY,
NOME_PROFISSIONAL VARCHAR(80) NOT NULL,
COD_AREA INT NOT NULL,

FOREIGN KEY (COD_AREA) references AREA(CODIGO_AREA)
);


-- criação do tabela agendamento
CREATE TABLE AGENDAMENTO
(
cod_agendamento INT AUTO_INCREMENT PRIMARY KEY,
cod_paciente INT NOT NULL,
cod_setor  INT NOT NULL,
cod_profissional INT NOT NULL,
data DATE NOT NULL,
hora TIME NOT NULL,

CONSTRAINT fk_paciente FOREIGN KEY (cod_paciente) REFERENCES paciente(id_paciente),
CONSTRAINT fk_profissional FOREIGN KEY (cod_profissional) REFERENCES profissional(codigo_profissional),
CONSTRAINT fk_area FOREIGN KEY (cod_profissional) REFERENCES area(codigo_area)
);


-- criação do tabela cobrancas
CREATE TABLE cobrancas(
cod_paciente INT NOT NULL, 
cod_profissional INT NOT NULL, 
cod_area_profissional INT NOT NULL, 
data DATE NOT NULL,
valor DECIMAL,

CONSTRAINT fk_paciente1 FOREIGN KEY (cod_paciente) REFERENCES paciente(id_paciente),
CONSTRAINT fk_profissional1 FOREIGN KEY (cod_profissional) REFERENCES profissional(codigo_profissional),
CONSTRAINT fk_area1 FOREIGN KEY (cod_area_profissional) REFERENCES area(codigo_area)
);





