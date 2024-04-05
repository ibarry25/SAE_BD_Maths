-- Insertion des catégories de confort
INSERT INTO CategoriesConfort (idCategorieConfort, description)
VALUES (1, 'Ville');

INSERT INTO CategoriesConfort (idCategorieConfort, description)
VALUES (2, 'Refuge');

INSERT INTO CategoriesConfort (idCategorieConfort, description)
VALUES (3, 'Placement de camping');

INSERT INTO CategoriesConfort (idCategorieConfort, description) VALUES (4, 'Auberge');
INSERT INTO CategoriesConfort (idCategorieConfort, description) VALUES (5, 'Gite');
INSERT INTO CategoriesConfort (idCategorieConfort, description) VALUES (6, 'Chalet');
INSERT INTO CategoriesConfort (idCategorieConfort, description) VALUES (7, 'Bivouac');
INSERT INTO CategoriesConfort (idCategorieConfort, description) VALUES (8, 'Abri de montagne');
INSERT INTO CategoriesConfort (idCategorieConfort, description) VALUES (9, 'Cabane isolee');
INSERT INTO CategoriesConfort (idCategorieConfort, description) VALUES (10, 'Autre');


-- Insertion des étapes
INSERT INTO Etape (idEtape, nomEtape, latitude, longitude, categorieConfort) VALUES (1, 'Orleans', 47.902964, 1.909251, 1);
INSERT INTO Etape (idEtape, nomEtape, latitude, longitude, categorieConfort) VALUES (2, 'Prati', 43.970675, 9.232572, 2);
INSERT INTO Etape (idEtape, nomEtape, latitude, longitude, categorieConfort) VALUES (3, 'L''Onda', 42.105156, 9.066107, 3);
INSERT INTO Etape (idEtape, nomEtape, latitude, longitude, categorieConfort) VALUES (4, 'Refuge de la Tonnara', 42.141295, 9.098731, 2);
INSERT INTO Etape (idEtape, nomEtape, latitude, longitude, categorieConfort) VALUES (5, 'Camping de la Plage', 42.075527, 9.136216, 3);
INSERT INTO Etape (idEtape, nomEtape, latitude, longitude, categorieConfort) VALUES (6, 'Auberge du Lac', 45.871016, 6.665229, 4);
INSERT INTO Etape (idEtape, nomEtape, latitude, longitude, categorieConfort) VALUES (7, 'Gite de Montagne', 46.179213, 6.720354, 5);
INSERT INTO Etape (idEtape, nomEtape, latitude, longitude, categorieConfort) VALUES (8, 'Chalet de la Cascade', 45.956285, 6.732328, 6);
INSERT INTO Etape (idEtape, nomEtape, latitude, longitude, categorieConfort) VALUES (9, 'Bivouac des Cimes', 45.913623, 6.866788, 7);



INSERT INTO Troncon (idTroncon, nomUsuel, distance, typeSol, deniveleMoyen, idPointDepart, idPointArrivee, pointsInteret, indicesQualite) VALUES (
    1, 
    'Orleans - Prati', 
    500, 
    'bitume', 
    100, 
    1, 
    2, 
    pointsInteretTable(
        pointsInteret('Point A', 'Type A'),
        pointsInteret('Point B', 'Type B')
    ),
    IndiceArray(
        indicesQualite('Indice 1', 10, 3),
        indicesQualite('Indice 2', 8, 2)
    )
);

INSERT INTO Troncon (idTroncon, nomUsuel, distance, typeSol, deniveleMoyen, idPointDepart, idPointArrivee, pointsInteret, indicesQualite) VALUES (
    2, 
    'Prati - L''Onda', 
    700, 
    'terre', 
    200, 
    2, 
    3, 
    pointsInteretTable(
        pointsInteret('Point C', 'Type C'),
        pointsInteret('Point D', 'Type D')
    ),
    IndiceArray(
        indicesQualite('Indice 3', 12, 5),
        indicesQualite('Indice 4', 6, 3)
    )
);

INSERT INTO Troncon (idTroncon, nomUsuel, distance, typeSol, deniveleMoyen, idPointDepart, idPointArrivee, pointsInteret, indicesQualite) VALUES (
    3, 
    'L''Onda - Refuge de la Tonnara', 
    800, 
    'terre', 
    150, 
    3, 
    4, 
    pointsInteretTable(
        pointsInteret('Point E', 'Type E'),
        pointsInteret('Point F', 'Type F')
    ),
    IndiceArray(
        indicesQualite('Indice 5', 15, 7),
        indicesQualite('Indice 6', 8, 4)
    )
);







