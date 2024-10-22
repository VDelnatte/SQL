INSERT INTO fournisseur (ID, NOM) values (1, "Francaise d'Import");
INSERT INTO fournisseur (ID, NOM) values (2, "FDM SA");
INSERT INTO fournisseur (ID, NOM) values (3, "Dubois & Fils");

INSERT INTO article (ID, REF, DESIGNATION, PRIX, ID_FOU) values (1, "A01", "Perceuse P1", 74.99, 1);
INSERT INTO article (ID, REF, DESIGNATION, PRIX, ID_FOU) values (2, "F01", "Boulon laiton 4 x 40 mm (sachet de 10)", 2.25, 2);
INSERT INTO article (ID, REF, DESIGNATION, PRIX, ID_FOU) values (3, "F02", "Boulon laiton 5 x 40 mm (sachet de 10)", 4.45, 2);
INSERT INTO article (ID, REF, DESIGNATION, PRIX, ID_FOU) values (4, "D01", "Boulon laiton 5 x 40 mm (sachet de 10)", 4.40, 3);
INSERT INTO article (ID, REF, DESIGNATION, PRIX, ID_FOU) values (5, "A02", "Meuleuse 125mm", 37.85, 1);
INSERT INTO article (ID, REF, DESIGNATION, PRIX, ID_FOU) values (6, "D03", "Boulon acier zingué 4 x 40mm (sachet de 10)", 1.8, 3);
INSERT INTO article (ID, REF, DESIGNATION, PRIX, ID_FOU) values (7, "A03", "Perceuse à colonne", 185.25, 1);
INSERT INTO article (ID, REF, DESIGNATION, PRIX, ID_FOU) values (8, "D04", "Coffret mêches à bois", 12.25, 3);
INSERT INTO article (ID, REF, DESIGNATION, PRIX, ID_FOU) values (9, "F03", "Coffret mêches plates", 6.25, 2);
INSERT INTO article (ID, REF, DESIGNATION, PRIX, ID_FOU) values (10, "F04", "Fraises d’encastrement", 8.14, 2);

INSERT INTO bon (ID, DELAI, ID_FOU) value (1, 3, 1);

INSERT INTO compo (ID_ART, ID_BON, QTE) values (1, 1, 3);
INSERT INTO compo (ID_ART, ID_BON, QTE) values (5, 1, 4);
INSERT INTO compo (ID_ART, ID_BON, QTE) values (7, 1, 1);

INSERT INTO BON (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE) VALUES (2, 2, 5, 2, '2019-03-02 09:30:00');
INSERT INTO COMPO (ID_ART, ID_BON, QTE) values (2, 2, 25),
(3, 2, 15),
(9, 2, 8),
(10, 2, 11);

INSERT INTO BON (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE) VALUES (3, 3, 2, 3, '2019-04-03 17:30:00');
INSERT INTO COMPO (ID_ART, ID_BON, QTE) values (4, 3, 25),
(6, 3, 40),
(8, 3, 15);

INSERT INTO BON (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE) VALUES (4, 4, 2, 3, '2019-04-05 11:40:00');
INSERT INTO COMPO (ID_ART, ID_BON, QTE) values (4, 4, 10),
(6, 4, 15),
(8, 4, 8);

INSERT INTO BON (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE) VALUES (5, 5, 7, 2, '2019-05-15 14:45:00');
INSERT INTO COMPO (ID_ART, ID_BON, QTE) values (2, 5, 17),
(3, 5, 13),
(10, 5, 9);

INSERT INTO BON (ID, NUMERO, DELAI, ID_FOU, DATE_CMDE) VALUES (6, 6, 0, 1, '2019-06-24 18:55:00');



    
    





