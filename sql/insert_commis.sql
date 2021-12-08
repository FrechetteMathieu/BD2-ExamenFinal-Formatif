use Examen_final_formatif;

-- Insertion des commis par défaut
INSERT INTO commis (code_commis, prenom, nom) VALUES
('123', 'Mathieu', 'Fréchette'),
('857', 'Annadiane', 'Du Plantier'),
('155', 'Raymund', 'Kacheller'),
('743', 'Ibrahim', 'MacConnechie'),
('780', 'Maryjane', 'O''Fielly'),
('988', 'Isidore', 'Petti'),
('277', 'Leontine', 'Cotesford'),
('689', 'Heloise', 'Posselt'),
('925', 'Bevon', 'Valasek'),
('786', 'Rollin', 'Stopforth'),
('168', 'Shepard', 'Gately');

-- Insertion des informations de connexion d'un commis
set @commis_id = (select id from `commis` where code_commis = '123');
INSERT INTO commis_connexion(commis_id, nom_usager, mot_de_passe_hash, salt)
VALUES (@commis_id, 'math', '$2b$12$WaevnzBBZMZ2FPt4zgDtLOW4egiEvBjyGNlDxySPXs0tw48tMldqi', '$2b$12$WaevnzBBZMZ2FPt4zgDtLO')