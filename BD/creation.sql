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
    FOREIGN KEY (idPointDepart) REFERENCES Etapes(idEtape),
    FOREIGN KEY (idPointArrivee) REFERENCES Etapes(idEtape)
);




