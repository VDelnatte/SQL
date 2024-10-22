-- A Listez toutes les données concernant les articles

SELECT * FROM article;

-- B Listez uniquement les références et désignations des articles de plus de 2 euros

SELECT REF, DESIGNATION 
FROM article 
WHERE PRIX > 2;

-- C En utilisant les opérateurs de comparaison, listez tous les articles dont le prix est compris entre 2 et 6.25 euros

SELECT REF, DESIGNATION, PRIX 
FROM article 
WHERE PRIX >= 2 AND <= 6.25;

-- D En utilisant l’opérateur BETWEEN, listez tous les articles dont le prix est compris entre 2 et 6.25 euros

SELECT *
FROM article 
WHERE PRIX 
BETWEEN 2,00 AND 6,25;

-- E Listez tous les articles, dans l’ordre des prix descendants, et dont le prix n’est pas compris entre 2 et 6.25 euros et dont le fournisseur est Française d’Imports.

SELECT *
FROM article 
WHERE PRIX NOT BETWEEN 2,00 AND 6,25 
AND ID_FOU = 1
ORDER BY PRIX DESC;

-- F En utilisant un opérateur logique, listez tous les articles dont les fournisseurs sont la Française d’imports ou Dubois et Fils

SELECT *
FROM article
WHERE ID_FOU = 1 OR ID_FOU = 3;

-- G En utilisant l’opérateur IN, réalisez la même requête que précédemment

SELECT *
FROM article
WHERE ID_FOU IN (1,3);

-- H En utilisant les opérateurs NOT et IN, listez tous les articles dont les fournisseurs ne sont ni Française d’Imports, ni Dubois et Fils.

SELECT * 
FROM article
WHERE ID_FOU NOT IN (1,3);

-- I Listez tous les bons de commande dont la date de commande est entre le 01/02/2019 et le 30/04/2019.

SELECT *
FROM bon
WHERE DATE_CMDE BETWEEN `2019/02/01` AND `2019/04/30`;