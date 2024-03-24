-- Pour chaque tronçon, donner le nombre de points d'intérêt, par type 

SELECT t.idTroncon,
       p.type,
       COUNT(*) AS nombre_points_interet
FROM Troncons t,
     TABLE(t.pointsInteret) p
GROUP BY t.idTroncon, p.type;


-- L'impact d'un indice de qualité est donné par le produit de sa valeur et du poids qui lui est attribué. Pour chaque tronçon, indiquer l'impact de chaque indice de qualité :

SELECT t.idTroncon,
       iq.nom AS nom_indice,
       iq.valeur * t.indicesQualite.poids AS impact
FROM Troncons t,
     TABLE(t.indicesQualite) iq;
