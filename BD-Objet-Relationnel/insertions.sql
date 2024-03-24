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

-- Insertion des points d'intérêt
INSERT INTO PointsInteret (nom, type)
VALUES ('Point A', 'Nature');

INSERT INTO PointsInteret (nom, type)
VALUES ('Point B', 'Culture');

INSERT INTO PointsInteret (nom, type)
VALUES ('Point C', 'Histoire');

-- Insertion des indices de qualité
INSERT INTO IndicesQualite (nom, valeur)
VALUES ('Qualité A', 3);

INSERT INTO IndicesQualite (nom, valeur)
VALUES ('Qualité B', 4);

INSERT INTO IndicesQualite (nom, valeur)
VALUES ('Qualité C', 5);


-- Exemple d'insertion d'un tronçon avec des objets imbriqués
INSERT INTO Troncons (idTroncon, nomUsuel, distance, typeSol, deniveleMoyen, idPointDepart, idPointArrivee, pointsInteret, indicesQualite)
VALUES (1, 'Tronçon A', 10, 'terre', 100, 1, 2, PointInteret('Point A', 'Nature'), IndiceQualite('Qualité A', 3));

INSERT INTO Troncons (idTroncon, nomUsuel, distance, typeSol, deniveleMoyen, idPointDepart, idPointArrivee, pointsInteret, indicesQualite)
VALUES (2, 'Tronçon B', 15, 'bitume', 50, 2, 3, PointInteret('Point B', 'Culture'), IndiceQualite('Qualité B', 4));

INSERT INTO Troncons (idTroncon, nomUsuel, distance, typeSol, deniveleMoyen, idPointDepart, idPointArrivee, pointsInteret, indicesQualite)
VALUES (3, 'Tronçon C', 20, 'gravier', 80, 1, 3, PointInteret('Point C', 'Histoire'), IndiceQualite('Qualité C', 5));

INSERT INTO Troncons (idTroncon, nomUsuel, distance, typeSol, deniveleMoyen, idPointDepart, idPointArrivee, pointsInteret, indicesQualite)
VALUES (4, 'Tronçon D', 5, 'bitume', 20, 3, 4, PointInteret('Point A', 'Nature'), IndiceQualite('Qualité A', 3));


