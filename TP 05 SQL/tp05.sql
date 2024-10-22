SET SQL_SAFE_UPDATES = 0;

-- A Mettez en minuscules la désignation de l’article dont l’identifiant est 2

UPDATE article SET DESIGNATION = LOWER(DESIGNATION) WHERE ID = 2;

-- B Mettez en majuscules les désignations de tous les articles dont le prix est strictement supérieur à 10€

UPDATE article SET DESIGNATION = UPPER(DESIGNATION) WHERE PRIX > 10;

-- C Baissez de 10% le prix de tous les articles qui n’ont pas fait l’objet d’une commande.

UPDATE article SET PRIX = PRIX * 0.9 WHERE ID NOT IN (
    SELECT DISTINCT ID_ART
    FROM compo
);

-- D Une erreur s’est glissée dans les commandes concernant Française d’imports. Les chiffres en base ne sont pas bons. Il faut doubler les quantités de tous les articles commandés à cette société.



-- E Mettez au point une requête update qui permette de supprimer les éléments entre parenthèses dans les désignations. Il vous faudra utiliser des fonctions comme substring et position.