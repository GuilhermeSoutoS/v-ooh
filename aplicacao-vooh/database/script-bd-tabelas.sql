create database if not exists vooh;

use vooh;
# DROP DATABASE vooh;
CREATE TABLE IF NOT EXISTS Empresa (
    idEmpresa INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    cnpj CHAR(14) NULL,
    token DOUBLE NULL,
    email VARCHAR(100) NULL,
    senha VARCHAR(75) NULL,
    telefoneContato CHAR(11) NULL,
    razaoSocial VARCHAR(100) NULL
);

CREATE TABLE IF NOT EXISTS Usuario (
    idUsuario INT NOT NULL AUTO_INCREMENT,
    fkEmpresa INT NOT NULL,
    nome VARCHAR(45) NULL,
    cpf VARCHAR(45) NULL,
    email VARCHAR(45) NULL,
    senha VARCHAR(45) NULL,
    PRIMARY KEY (idUsuario , fkEmpresa),
    CONSTRAINT fk_Usuario_Empresa FOREIGN KEY (fkEmpresa)
        REFERENCES Empresa (idEmpresa)
);
    
CREATE TABLE IF NOT EXISTS Maquinas (
    idMaquinas INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    fkEmpresa INT NOT NULL,
    CONSTRAINT fk_Maquinas_Empresa1 FOREIGN KEY (fkEmpresa)
        REFERENCES Empresa (idEmpresa)
);

CREATE TABLE IF NOT EXISTS Componentes (
    idComponentes INT NOT NULL PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE IF NOT EXISTS Monitorando (
    fkMaquina INT NOT NULL AUTO_INCREMENT,
    fkComponentes INT NOT NULL,
    PRIMARY KEY (fkMaquina , fkComponentes),
    CONSTRAINT fk_Monitorando_Maquinas1 FOREIGN KEY (fkMaquina)
        REFERENCES Maquinas (idMaquinas),
    CONSTRAINT fk_Monitorando_Componentes1 FOREIGN KEY (fkComponentes)
        REFERENCES Componentes (idComponentes)
);