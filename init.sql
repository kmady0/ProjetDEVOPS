-- Création de l'utilisateur et des droits (équivalent aux commandes GRANT du script)
CREATE USER IF NOT EXISTS 'nodeapp'@'%' IDENTIFIED BY 'student12';
GRANT ALL PRIVILEGES ON *.* TO 'nodeapp'@'%';
FLUSH PRIVILEGES;

-- Création de la structure (copié-collé de ton script)
CREATE DATABASE IF NOT EXISTS STUDENTS;
USE STUDENTS;

CREATE TABLE IF NOT EXISTS students(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    state VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(100) NOT NULL,
    PRIMARY KEY ( id )
);