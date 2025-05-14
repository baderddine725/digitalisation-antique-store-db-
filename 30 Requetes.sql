-- 1. INSERT: Add a new medieval armor article
INSERT INTO Article (Article_ID, Nom, Description, Prix, Date_Ajout, Etat, Approvisionnement_ID, Fournisseur_ID)
VALUES (16, 'Armure médiévale', 'Armure complète en acier du XVe siècle.', 12500.00, SYSDATE, 'Usé', 8, 8);

-- 2. INSERT: Add a new client for upcoming sale
INSERT INTO Client (Client_ID, Nom, Email, Telephone, Adresse)
VALUES (11, 'Nadia Saidi', 'nadia.saidi@example.tn', '555-3101', '14 Rue Habib Bourguiba, Tunis');

-- 3. INSERT: Record a new sale for article 16 by client 11
INSERT INTO Vente (Vente_ID, Date_Vente, Nombre_Article, Client_ID)
VALUES (14, SYSDATE, 1, 11);

-- 4. INSERT: Link article 16 to sale 14
INSERT INTO Comporte (Article_ID, Vente_ID) VALUES (16, 14);

-- 5. INSERT: Record payment for sale 14
INSERT INTO Paiement (Paiement_ID, Montant, Mode_paiement, Date_paiement, Vente_ID)
VALUES (14, 12500.00, 'Virement', SYSDATE, 14);

-- 6. UPDATE: Retire article 14 (Mousquet à silex) and zero its price
UPDATE Article
SET Etat = 'Retiré', Prix = 0
WHERE Article_ID = 14;

-- 7. UPDATE: Decrease stock quantity in depot 4 by 2 after recent sales
UPDATE Stock
SET Quantite = Quantite - 2
WHERE Depot_ID = 4;

-- 8. DELETE: Remove client 9 who has no active sales
DELETE FROM Client
WHERE Client_ID = 9;

-- 9. DELETE: Remove login entry for employee 5
DELETE FROM Donnees_login
WHERE Employe_ID = 5;

-- 10. DELETE: Remove inactive tour agency (ID = 2)
DELETE FROM Agence_touristique
WHERE Agence_ID = 2;

-- ==================
-- 20 SELECT Queries 
-- ==================

-- 11. Simple: List all articles with price above 5000
SELECT *
FROM Article
WHERE Prix > 5000;

-- 12. Simple: Find clients located in Paris
SELECT Nom, Email, Adresse
FROM Client
WHERE Adresse LIKE '%Paris%';

-- 13. Aggregate: Count total number of sales
SELECT COUNT(*) AS total_ventes
FROM Vente;

-- 14. Aggregate with filter: Sum of all bank transfers
SELECT SUM(Montant) AS total_virements
FROM Paiement
WHERE Mode_paiement = 'Virement';

-- 15. Join: View stock levels for each article
SELECT a.Article_ID, a.Nom, s.Quantite, s.Seuil_alert
FROM Article a
JOIN Contient c ON a.Article_ID = c.Article_ID
JOIN Stock s   ON c.Depot_ID = s.Depot_ID;

-- 16. Join: List sales with client name and sale date
SELECT v.Vente_ID, TO_CHAR(v.Date_Vente,'YYYY-MM-DD') AS date_vente, c.Nom AS client
FROM Vente v
JOIN Client c ON v.Client_ID = c.Client_ID
ORDER BY v.Date_Vente DESC;

-- 17. Group & HAVING: Suppliers with more than 2 articles
SELECT f.Nom AS fournisseur, COUNT(a.Article_ID) AS nbr_articles
FROM Fournisseur f
JOIN Article a ON f.Fournisseur_ID = a.Fournisseur_ID
GROUP BY f.Nom
HAVING COUNT(a.Article_ID) > 2;

-- 18. Date range: Articles added in March 2025
SELECT Article_ID, Nom, Date_Ajout
FROM Article
WHERE Date_Ajout BETWEEN DATE '2025-03-01' AND DATE '2025-03-31';

-- 19. Correlated subquery: Articles never sold
SELECT a.Article_ID, a.Nom
FROM Article a
WHERE NOT EXISTS (
  SELECT 1 FROM Comporte cp WHERE cp.Article_ID = a.Article_ID
);

-- 20. Window function: Top 3 clients by total spend
SELECT client, total_spent
FROM (
  SELECT c.Client_ID,
         c.Nom AS client,
         SUM(p.Montant) AS total_spent,
         RANK() OVER (ORDER BY SUM(p.Montant) DESC) AS rk
  FROM Client c
  JOIN Vente v ON c.Client_ID = v.Client_ID
  JOIN Paiement p ON v.Vente_ID = p.Vente_ID
  GROUP BY c.Client_ID, c.Nom
) WHERE rk <= 3;

-- 21. Left join: All categories with article count (including zero)
SELECT cat.Nom_Categorie,
       COUNT(ap.Article_ID) AS num_articles
FROM Categorie cat
LEFT JOIN Appartient_a ap ON cat.Categorie_ID = ap.Categorie_ID
GROUP BY cat.Nom_Categorie;

-- 22. Nested query: Employees managing depot 1
SELECT e.Nom || ' ' || e.Prenom AS employe
FROM Employe e
WHERE e.Employe_ID IN (
  SELECT Employe_ID FROM Gerer WHERE Depot_ID = 1
);

-- 23. Join + aggregate: Number of evaluations per article
SELECT a.Nom,
       COUNT(ev.Antiquaire_ID) AS nb_evaluations
FROM Article a
LEFT JOIN Evaluer ev ON a.Article_ID = ev.Article_ID
GROUP BY a.Nom
ORDER BY nb_evaluations DESC;

-- 24. Complex join: Sales details including articles and payments
SELECT v.Vente_ID,
       TO_CHAR(v.Date_Vente,'YYYY-MM-DD') AS date_vente,
       c.Nom AS client,
       a.Nom AS article,
       p.Montant,
       p.Mode_paiement
FROM Vente v
JOIN Client c      ON v.Client_ID = c.Client_ID
JOIN Comporte cp   ON v.Vente_ID = cp.Vente_ID
JOIN Article a     ON cp.Article_ID = a.Article_ID
LEFT JOIN Paiement p ON v.Vente_ID = p.Vente_ID
ORDER BY v.Date_Vente;

-- 25. Aggregate + case: Average price by article condition
SELECT Etat,
       ROUND(AVG(Prix),2) AS avg_price
FROM Article
GROUP BY Etat;

-- 26. Union: All active users from employees and clients login tables
SELECT dl.Login_username AS user_login, 'Employee' AS user_type
FROM Donnees_login dl
UNION
SELECT c.Email AS user_login, 'Client' AS user_type
FROM Client c;

-- 27. Exists + join: Tour agencies collaborating with Sales department
SELECT ag.Nom AS agence
FROM Agence_touristique ag
WHERE EXISTS (
  SELECT 1
  FROM Collabore col
  WHERE col.Agence_ID = ag.Agence_ID
    AND col.Departement_ID = 1
);

-- 28. Subquery in FROM: Top-selling article(s)
SELECT x.Article_ID, x.total_sales
FROM (
  SELECT cp.Article_ID, COUNT(*) AS total_sales
  FROM Comporte cp
  GROUP BY cp.Article_ID
) x
WHERE x.total_sales = (
  SELECT MAX(cnt) FROM (
    SELECT COUNT(*) AS cnt FROM Comporte GROUP BY Article_ID
  )
);

-- 29. Analytical: Client purchase frequency
SELECT c.Nom,
       COUNT(v.Vente_ID) AS achats,
       ROUND(AVG(p.Montant),2) AS depense_moyenne
FROM Client c
JOIN Vente v ON c.Client_ID = v.Client_ID
JOIN Paiement p ON v.Vente_ID = p.Vente_ID
GROUP BY c.Nom;

-- 30. Simple select: Retrieve all antique experts specializing in jewelry
SELECT Nom, Telephone, Email, Avis
FROM Antiquaire
WHERE Specialite = 'Bijoux';

