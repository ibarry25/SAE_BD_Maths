-- Donner les noms des étapes que nous pouvons atteindre directement en suivant les tronçons qui partent d’Orléans 

SELECT e.nomEtape
FROM Troncons t
JOIN Etapes e ON t.idPointArrivee = e.idEtape
JOIN Etapes e_dep ON t.idPointDepart = e_dep.idEtape
WHERE e_dep.nomEtape = 'Orléans';


-- Veuillez fournir la liste des étapes accessibles depuis Orléans avec une seule étape intermédiaire

SELECT e2.nomEtape
FROM Troncons t1
JOIN Troncons t2 ON t1.idPointArrivee = t2.idPointDepart
JOIN Etapes e1 ON t1.idPointDepart = e1.idEtape
JOIN Etapes e2 ON t2.idPointArrivee = e2.idEtape
WHERE e1.nomEtape = 'Orléans';


-- Veuillez fournir la liste des étapes accessibles depuis Orléans, avec un nombre quelconque d’étapes intermédiaires

WITH Chemin(idEtape,nomEtape,niveau) AS (
  SELECT e.idEtape, e.nomEtape ,0
  FROM Etapes e
  WHERE e.nomEtape = 'Orléans'
  UNION ALL
  SELECT e.idEtape, e.nomEtape ,c.niveau + 1
  FROM Etapes e 
  JOIN Troncons t ON e.idEtape = t.idPointArrivee
  JOIN Chemin c ON t.idPointDepart = c.idEtape
)
SELECT distinct nomEtape, niveau
FROM Chemin c
WHERE nomEtape != 'Orléans';
