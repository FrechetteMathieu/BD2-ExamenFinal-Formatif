-- Création de la base de données
DROP DATABASE IF EXISTS Examen_final_formatif;
CREATE DATABASE Examen_final_formatif;
USE Examen_final_formatif;


-- Création de la table des commis
CREATE TABLE commis (
	id INT auto_increment NOT NULL,
	code_commis varchar(10) NOT NULL,
	prenom varchar(50) NULL,
	nom varchar(50) NULL,
	CONSTRAINT commis_pk PRIMARY KEY (id),
	CONSTRAINT code_commis_unique UNIQUE KEY (code_commis)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

-- Création de la table ccommis_connexion
CREATE TABLE commis_connexion (
	id INT auto_increment NOT NULL,
	commis_id INT NOT NULL,
	nom_usager varchar(255) NOT NULL,
	mot_de_passe_hash varchar(255) NOT NULL,
	salt varchar(255) NOT NULL,
	CONSTRAINT commis_connexion_pk PRIMARY KEY (id),
	CONSTRAINT commis_connexion_FK FOREIGN KEY (commis_id) REFERENCES examen_final_formatif.commis(id) ON DELETE CASCADE,
	CONSTRAINT nom_usager_unique UNIQUE KEY (nom_usager)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;


-- Insertion des données dans la table commis
-- INSERT INTO commis(code_commis, prenom, nom)
-- VALUES ('10', 'Mathieu', 'Fréchette')

