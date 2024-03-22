-- Insertion des catégories de confort
INSERT INTO CategoriesConfort (idCategorieConfort, description)
VALUES (1, 'Ville');

INSERT INTO CategoriesConfort (idCategorieConfort, description)
VALUES (2, 'Refuge');

INSERT INTO CategoriesConfort (idCategorieConfort, description)
VALUES (3, 'Placement de camping');



-- Insertion des étapes
INSERT INTO Etapes (idEtape, nomEtape, latitude, longitude, niveauConfort, idCategorieConfort)
VALUES (1, 'Orléans', 47.9022, 1.90997, 5, 1);

INSERT INTO Etapes (idEtape, nomEtape, latitude, longitude, niveauConfort, idCategorieConfort)
VALUES (2, 'Etape intermediaire', 47.8000, 1.8000, 3, 2);

INSERT INTO Etapes (idEtape, nomEtape, latitude, longitude, niveauConfort, idCategorieConfort)
VALUES (3, 'Etape finale', 47.7000, 1.7000, 4, 3);

INSERT INTO Etapes (idEtape, nomEtape, latitude, longitude, niveauConfort, idCategorieConfort)
VALUES (4, 'Autre Étape', 47.7500, 1.8500, 4, 3);

-- Insertion des tronçons
INSERT INTO Troncons (idTroncon, nomUsuel, distance, typeSol, deniveleMoyen, idPointDepart, idPointArrivee)
VALUES (1, 'Tronçon 1', 10, 'terre', 100, 1, 2);

INSERT INTO Troncons (idTroncon, nomUsuel, distance, typeSol, deniveleMoyen, idPointDepart, idPointArrivee)
VALUES (2, 'Tronçon 2', 15, 'bitume', 50, 2, 3);

INSERT INTO Troncons (idTroncon, nomUsuel, distance, typeSol, deniveleMoyen, idPointDepart, idPointArrivee)
VALUES (3, 'Tronçon 3', 20, 'gravier', 80, 1, 3);

INSERT INTO Troncons (idTroncon, nomUsuel, distance, typeSol, deniveleMoyen, idPointDepart, idPointArrivee)
VALUES (4, 'Tronçon 4', 5, 'bitume', 20, 3, 4);



