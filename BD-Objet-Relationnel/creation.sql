-- Définition du type d'objet pour les points d'intérêt
CREATE TYPE PointInteret AS OBJECT (
    nom VARCHAR2(100),
    type VARCHAR2(50)
);

-- Définition du type d'objet pour les indices de qualité
CREATE TYPE IndiceQualite AS OBJECT (
    nom VARCHAR2(100),
    valeur NUMBER
);


CREATE TABLE CategoriesConfort (
    idCategorieConfort NUMBER PRIMARY KEY,
    description VARCHAR2(200)
);

CREATE TABLE Etapes (
    idEtape NUMBER PRIMARY KEY,
    nomEtape VARCHAR2(100),
    latitude NUMBER,
    longitude NUMBER,
    niveauConfort NUMBER,
    idCategorieConfort NUMBER,
    FOREIGN KEY (idCategorieConfort) REFERENCES CategoriesConfort(idCategorieConfort)
);


CREATE TABLE Troncons (
    idTroncon NUMBER PRIMARY KEY,
    nomUsuel VARCHAR2(100),
    distance NUMBER,
    typeSol VARCHAR2(50),
    deniveleMoyen NUMBER,
    idPointDepart NUMBER,
    idPointArrivee NUMBER,
    pointsInteret PointInteret,
    indicesQualite IndiceQualite,
    FOREIGN KEY (idPointDepart) REFERENCES Etapes(idEtape),
    FOREIGN KEY (idPointArrivee) REFERENCES Etapes(idEtape)
);




