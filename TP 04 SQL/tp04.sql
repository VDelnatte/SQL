
-- A Listez les articles dans l’ordre alphabétique des désignations

SELECT *
FROM articles 
ORDER BY DESIGNATION ASC;

-- B Listez les articles dans l’ordre des prix du plus élevé au moins élevé

SELECT *
FROM articles 
ORDER BY PRIX DESC;

-- C Listez tous les articles qui sont des « boulons » et triez les résultats par ordre de prix ascendant

SELECT *
FROM article
WHERE DESIGNATION LIKE 'B%' 
ORDER BY PRIX ASC;

-- D Listez tous les articles dont la désignation contient le mot « sachet ».

SELECT *
FROM article
WHERE DESIGNATION LIKE '%sachet%';
/* Les % avant et après nos caracrères permettent d'indiquer qu'il y a du texte avant et après celui que l'on cherche pour chercher notre texte dans une chaine de caractères */

-- E Listez tous les articles dont la désignation contient le mot « sachet » indépendamment de la casse !

SELECT *
FROM article
WHERE LOWER(DESIGNATION) LIKE '%sachet%';

-- F Listez les articles avec les informations fournisseur correspondantes. Les résultats doivent être triées dans l’ordre alphabétique des fournisseurs et par article du prix le plus élevé au moins élevé.

SELECT *
FROM article, fournisseur
WHERE article.ID_FOU = fournisseur.ID
ORDER BY fournisseur.NOM, article.PRIX DESC;
/* Les lignes 37 et 44 sont des conditions de jointure */

-- G Listez les articles de la société « Dubois & Fils »

SELECT *
FROM article, fournisseur
WHERE article.ID_FOU = fournisseur.ID 
WHERE NOM = 'Dubois & Fils';
/* Les lignes 37 et 44 sont des conditions de jointure */

-- H Calculez la moyenne des prix des articles de la société « Dubois & Fils »

SELECT AVG(a.prix) 
FROM article a, fournisseur f
WHERE a.ID_FOU = f.nom = 'Dubois & Fils'

-- I Calculez la moyenne des prix des articles de chaque fournisseur

SELECT f.NOM, AVG(a.prix) 
FROM article a, fournisseur f
WHERE a.ID_FOU = f.ID
GROUP BY f.nom

-- J Sélectionnez tous les bons de commandes émis entre le 01/03/2019 et le 05/04/2019 à 12h00.

SELECT *
FROM bon b
WHERE b.DATE_CMDE BETWEEN '2019/03/01' AND '2019/04/05 12:00:00'; 


-- K Sélectionnez les divers bons de commande qui contiennent des boulons

SELECT *
FROM bon b, article a, fournisseur f
WHERE b.ID_FOU = f.ID AND f.ID = a.ID_FOU AND a.DESIGNATION LIKE '%boulon%';


-- L Sélectionnez les divers bons de commande qui contiennent des boulons avec le nom du fournisseur associé.

SELECT fournisseur.NOM article.DESIGNATION
FROM bon b, article a, fournisseur f
WHERE b.ID_FOU = f.ID AND f.ID = a.ID_FOU AND a.DESIGNATION LIKE '%boulon%';

-- M Calculez le prix total de chaque bon de commande

SELECT b.NUMERO, SUM(a.PRIX * c.QTE)
FROM bon b 
JOIN compo c ON b.ID = c.ID_BON
JOIN article a ON c.ID_ART = a.ID
GROUP BY b.NUMERO;

-- N Comptez le nombre d’articles de chaque bon de commande

SELECT ID_BON, SUM(QTE)
FROM bon, compo, article
WHERE bon.ID = compo.ID_BON AND compo.ID_ART = article.ID
GROUP BY ID_BON

-- O Affichez les numéros de bons de commande qui contiennent plus de 25 articles et affichez le nombre d’articles de chacun de ces bons de commande



-- P Calculez le coût total des commandes effectuées sur le mois d’avril



