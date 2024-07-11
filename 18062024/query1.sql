CREATE DATABASE IF NOT EXISTS Mar18062024;

USE Mar18062024;
/*
CREATE TABLE Province (
    sigla CHAR(2) PRIMARY KEY, 
    nome_provincia VARCHAR(50) NOT NULL,
    numero_abitanti INT
);

CREATE TABLE IF NOT EXISTS Province (
    sigla CHAR(2) PRIMARY KEY,
    nome_provincia VARCHAR(50) NOT NULL,
    numero_abitanti INT
);

CREATE TABLE IF NOT EXISTS JOB (
    id_impiegato INT PRIMARY KEY,
    data_inizio DATE NOT NULL,
    data_fine DATE,
    id_lavoro INT NOT NULL,
    ID_dipartimento INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Persone (
    età INT NOT NULL,
    nome_persona VARCHAR(50) NOT NULL,
    cognome_persona VARCHAR(50) NOT NULL,
    sesso ENUM('Maschio','Femmina'),
    PRIMARY KEY (nome_persona, cognome_persona)
);

CREATE TABLE IF NOT EXISTS Reparto (
    id_reparto INT PRIMARY KEY AUTO_INCREMENT,
    nome_reparto VARCHAR(50) NOT NULL,
    UNIQUE KEY unique_reparto (nome_reparto)
);

CREATE TABLE IF NOT EXISTS Fornitore (
    id_fornitore INT PRIMARY KEY AUTO_INCREMENT,
    nome_fornitore VARCHAR(50),
    email_fornitore VARCHAR(50) UNIQUE CHECK (email_fornitore LIKE '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
    indirizzo VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS CDL (
    id_cdl INT PRIMARY KEY AUTO_INCREMENT,
    nome_cdl VARCHAR(100),
    UNIQUE KEY unique_cdl (nome_cdl)
);

CREATE TABLE IF NOT EXISTS Docente (
    id_docente INT PRIMARY KEY AUTO_INCREMENT,
    nome_docente VARCHAR(50),
    cognome_docente VARCHAR(50),
    email_docente VARCHAR(100) UNIQUE
);

CREATE TABLE IF NOT EXISTS Curriculum (
    id_curriculum INT PRIMARY KEY AUTO_INCREMENT,
    nome_curriculum VARCHAR(50) NOT NULL,
    id_cdl INT NOT NULL,
    FOREIGN KEY (id_cdl) REFERENCES CDL(id_cdl),
    UNIQUE KEY unique_curriculum (nome_curriculum, id_cdl)
);

CREATE TABLE IF NOT EXISTS Studente (
    id_studente INT PRIMARY KEY,
    nome_studente VARCHAR(50),
    cognome_studente VARCHAR(50),
    matricola VARCHAR(20) UNIQUE,
    email_studente VARCHAR(100),
    id_curriculum INT,
    FOREIGN KEY (id_curriculum) REFERENCES Curriculum(id_curriculum)
);

CREATE TABLE IF NOT EXISTS Luogo (
    id_luogo INT PRIMARY KEY,
    nome_luogo VARCHAR(100),
    indirizzo VARCHAR(100),
    UNIQUE KEY unique_luogo (nome_luogo, indirizzo)
);

CREATE TABLE IF NOT EXISTS Squadra (
    id_squadra INT PRIMARY KEY,
    nome_squadra VARCHAR(50),
    città VARCHAR(50),
    UNIQUE KEY unique_squadra (nome_squadra)
);

CREATE TABLE IF NOT EXISTS Campionato (
    id_campionato INT PRIMARY KEY,
    nome_campionato VARCHAR(100),
    anno INT,
    id_luogo INT,
    FOREIGN KEY (id_luogo) REFERENCES Luogo(id_luogo)
);

-- Query per rinominare la tabella Province in Regioni
ALTER TABLE Province RENAME TO Regioni;

-- Query per aggiungere la colonna via_principale alla tabella Regioni
ALTER TABLE Regioni
ADD COLUMN via_principale VARCHAR(100);

-- Aggiungi il campo codice_reparto alla tabella Reparto
ALTER TABLE Reparto
ADD COLUMN codice_reparto VARCHAR(10);

-- Rimuovi la colonna indirizzo dalla tabella Fornitore
ALTER TABLE Fornitore
DROP COLUMN indirizzo;

-- Aggiungi le colonne regione e provincia alla tabella Luogo
ALTER TABLE Luogo
ADD COLUMN regione VARCHAR(50),
ADD COLUMN provincia VARCHAR(50);

-- Aggiungi la colonna colore_squadra alla tabella Squadra
ALTER TABLE Squadra
ADD COLUMN colore_squadra VARCHAR(50);

-- Modifica il tipo di dati della colonna nome_luogo in VARCHAR(255)
ALTER TABLE Luogo
MODIFY COLUMN nome_luogo VARCHAR(255);
CREATE TABLE job (
    job_id INT PRIMARY KEY,
    job_name VARCHAR(100) NOT NULL,
    min_salary DECIMAL(10, 2),
    max_salary DECIMAL(10, 2),
    CHECK (max_salary <= 25000)
);

CREATE TABLE job (
    job_id INT PRIMARY KEY,
    job_name VARCHAR(100) DEFAULT '' NOT NULL,
    min_salary DECIMAL(10, 2) CHECK (min_salary > 8000),
    max_salary DECIMAL(10, 2) DEFAULT NULL
);
*/

CREATE TABLE job (
    id_impiegato INT PRIMARY KEY,
    data_inizio DATE NOT NULL,
    data_fine DATE NOT NULL,
    id_lavoro INT NOT NULL,
    id_dipartimento INT NOT NULL,
    CHECK (DATE_FORMAT(data_fine, '%d/%m/data_fine%Y') = data_fine)
);