CREATE DATABASE IF NOT EXISTS mlbb;

USE mlbb; 

CREATE TABLE IF NOT EXISTS tipo_heroe (
	IdHero INT AUTO_INCREMENT PRIMARY KEY,
    Hero VARCHAR(20),
    Fisico INT,
    Magico INT, 
    Verdadero INT) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\hero_type.csv'
INTO TABLE tipo_heroe
CHARACTER SET latin1
FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(Hero, Fisico, Magico, Verdadero);

SELECT * FROM tipo_heroe
LIMIT 10;

CREATE TABLE IF NOT EXISTS heroes (
	IdHero INT AUTO_INCREMENT PRIMARY KEY,
    Hero VARCHAR(20),
    Fisico INT,
    Magico INT, 
    Verdadero INT) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\hero_type.csv'
INTO TABLE tipo_heroe
CHARACTER SET latin1
FIELDS TERMINATED BY ',' ENCLOSED BY '\"' ESCAPED BY '\"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(Hero, Fisico, Magico, Verdadero);
