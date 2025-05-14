--DATA:
-- THIS IS RANDOMLY-GENERATED-data
-- Insert sample data into Fournisseur
INSERT INTO Fournisseur (Fournisseur_ID, Nom, Telephone, Email) VALUES (1, 'AntikSupply Ltd.', '555-0101', 'contact@antiksupply.com');
INSERT INTO Fournisseur (Fournisseur_ID, Nom, Telephone, Email) VALUES (2, 'Vintage Traders', '555-0202', 'info@vintagetraders.net');
INSERT INTO Fournisseur (Fournisseur_ID, Nom, Telephone, Email) VALUES (3, 'Heritage Finds', '555-0303', 'sales@heritagefinds.org');
INSERT INTO Fournisseur (Fournisseur_ID, Nom, Telephone, Email) VALUES (4, 'Classic Relics Co.', '555-0404', 'orders@classicrelics.co');
INSERT INTO Fournisseur (Fournisseur_ID, Nom, Telephone, Email) VALUES (5, 'Old Treasures Inc.', '555-0505', 'support@oldtreasures.com');

-- Insert sample data into Approvisionnement
INSERT INTO Approvisionnement (Approvisionnement_ID, Date_appro) VALUES (1, DATE '2025-01-15');
INSERT INTO Approvisionnement (Approvisionnement_ID, Date_appro) VALUES (2, DATE '2025-02-10');
INSERT INTO Approvisionnement (Approvisionnement_ID, Date_appro) VALUES (3, DATE '2025-03-05');
INSERT INTO Approvisionnement (Approvisionnement_ID, Date_appro) VALUES (4, DATE '2025-03-20');
INSERT INTO Approvisionnement (Approvisionnement_ID, Date_appro) VALUES (5, DATE '2025-04-01');

-- Insert sample data into Categorie
INSERT INTO Categorie (Categorie_ID, Nom_Categorie, Contexte_historique) VALUES (1, 'Porcelaine', 'Porcelain items from 18th-19th century Europe.');
INSERT INTO Categorie (Categorie_ID, Nom_Categorie, Contexte_historique) VALUES (2, 'Mobilier', 'Furniture from various historical periods.');
INSERT INTO Categorie (Categorie_ID, Nom_Categorie, Contexte_historique) VALUES (3, 'Tableaux', 'Paintings and framed artworks from Baroque to Modern art.');
INSERT INTO Categorie (Categorie_ID, Nom_Categorie, Contexte_historique) VALUES (4, 'Bijoux', 'Antique jewelry including Victorian and Art Deco eras.');
INSERT INTO Categorie (Categorie_ID, Nom_Categorie, Contexte_historique) VALUES (5, 'Livres', 'Rare and first-edition books from the 16th to 20th century.');

-- Insert sample data into Article
INSERT INTO Article (Article_ID, Nom, Description, Prix, Date_Ajout, Etat, Approvisionnement_ID, Fournisseur_ID)
VALUES (1, 'Vase Sèvres', 'Fine porcelain Sèvres vase, hand-painted.', 1200.00, DATE '2025-01-16', 'Bon', 1, 1);
INSERT INTO Article (Article_ID, Nom, Description, Prix, Date_Ajout, Etat, Approvisionnement_ID, Fournisseur_ID)
VALUES (2, 'Commode Louis XV', 'Walnut dresser with gilt bronze mounts.', 4500.00, DATE '2025-02-12', 'Usé', 2, 2);
INSERT INTO Article (Article_ID, Nom, Description, Prix, Date_Ajout, Etat, Approvisionnement_ID, Fournisseur_ID)
VALUES (3, 'Portrait XVIIIe siècle', 'Oil on canvas portrait of noblewoman, signed.', 3000.00, DATE '2025-03-06', 'Bon', 3, 3);
INSERT INTO Article (Article_ID, Nom, Description, Prix, Date_Ajout, Etat, Approvisionnement_ID, Fournisseur_ID)
VALUES (4, 'Collier Art déco', 'Platinum and diamond Art Deco necklace.', 8800.00, DATE '2025-03-21', 'Neuf', 4, 4);
INSERT INTO Article (Article_ID, Nom, Description, Prix, Date_Ajout, Etat, Approvisionnement_ID, Fournisseur_ID)
VALUES (5, 'Livre premier édition', 'First edition of ''Les Misérables'' by Victor Hugo.', 1500.00, DATE '2025-04-02', 'Bon', 5, 5);
INSERT INTO Article (Article_ID, Nom, Description, Prix, Date_Ajout, Etat, Approvisionnement_ID, Fournisseur_ID)
VALUES (6, 'Table à écrire Victorienne', 'Mahogany writing table with leather inset top.', 2200.00, DATE '2025-04-05', 'Usé', 5, 2);
INSERT INTO Article (Article_ID, Nom, Description, Prix, Date_Ajout, Etat, Approvisionnement_ID, Fournisseur_ID)
VALUES (7, 'Service à thé en argent', 'Sterling silver tea set, 12 pieces.', 5200.00, DATE '2025-03-30', 'Bon', 4, 1);
INSERT INTO Article (Article_ID, Nom, Description, Prix, Date_Ajout, Etat, Approvisionnement_ID, Fournisseur_ID)
VALUES (8, 'Gravure Napoléon', '19th century Napoleon Bonaparte engraving.', 800.00, DATE '2025-02-15', 'Bon', 2, 3);
INSERT INTO Article (Article_ID, Nom, Description, Prix, Date_Ajout, Etat, Approvisionnement_ID, Fournisseur_ID)
VALUES (9, 'Bague Renaissance', 'Gold ring with emerald from Renaissance era.', 6500.00, DATE '2025-01-20', 'Neuf', 1, 4);
INSERT INTO Article (Article_ID, Nom, Description, Prix, Date_Ajout, Etat, Approvisionnement_ID, Fournisseur_ID)
VALUES (10, 'Miroir baroque', 'Large gilded baroque mirror.', 3100.00, DATE '2025-03-10', 'Usé', 3, 5);

-- Assign categories to Articles (Appartient_a)
INSERT INTO Appartient_a (Article_ID, Categorie_ID) VALUES (1, 1);
INSERT INTO Appartient_a (Article_ID, Categorie_ID) VALUES (2, 2);
INSERT INTO Appartient_a (Article_ID, Categorie_ID) VALUES (3, 3);
INSERT INTO Appartient_a (Article_ID, Categorie_ID) VALUES (4, 4);
INSERT INTO Appartient_a (Article_ID, Categorie_ID) VALUES (5, 5);
INSERT INTO Appartient_a (Article_ID, Categorie_ID) VALUES (6, 2);
INSERT INTO Appartient_a (Article_ID, Categorie_ID) VALUES (7, 1);
INSERT INTO Appartient_a (Article_ID, Categorie_ID) VALUES (8, 3);
INSERT INTO Appartient_a (Article_ID, Categorie_ID) VALUES (9, 4);
INSERT INTO Appartient_a (Article_ID, Categorie_ID) VALUES (10, 2);

-- Insert sample data into Antiquaire
INSERT INTO Antiquaire (Antiquaire_ID, Nom, Specialite, Telephone, Email, Avis) VALUES (1, 'Jean Dupont', 'Porcelaine', '555-1101', 'j.dupont@antikexpert.com', 'Très réputé en porcelaine.');
INSERT INTO Antiquaire (Antiquaire_ID, Nom, Specialite, Telephone, Email, Avis) VALUES (2, 'Marie Curie', 'Mobilier ancien', '555-1202', 'marie.curie@mobexpert.fr', 'Spécialiste des meubles XVIIe.');
INSERT INTO Antiquaire (Antiquaire_ID, Nom, Specialite, Telephone, Email, Avis) VALUES (3, 'Louis Martin', 'Peinture classique', '555-1303', 'l.martin@arteval.com', 'Expert en portraits.');
INSERT INTO Antiquaire (Antiquaire_ID, Nom, Specialite, Telephone, Email, Avis) VALUES (4, 'Claire Moreau', 'Bijoux', '555-1404', 'cl.moreau@bijouantique.net', 'Artisan expérimentée.');
INSERT INTO Antiquaire (Antiquaire_ID, Nom, Specialite, Telephone, Email, Avis) VALUES (5, 'Paul Lefèvre', 'Livres rares', '555-1505', 'p.lefevre@bookantique.org', 'Connaissance approfondie en incunables.');

-- Link evaluations (Evaluer)
INSERT INTO Evaluer (Article_ID, Antiquaire_ID) VALUES (1, 1);
INSERT INTO Evaluer (Article_ID, Antiquaire_ID) VALUES (2, 2);
INSERT INTO Evaluer (Article_ID, Antiquaire_ID) VALUES (3, 3);
INSERT INTO Evaluer (Article_ID, Antiquaire_ID) VALUES (4, 4);
INSERT INTO Evaluer (Article_ID, Antiquaire_ID) VALUES (5, 5);
INSERT INTO Evaluer (Article_ID, Antiquaire_ID) VALUES (6, 2);
INSERT INTO Evaluer (Article_ID, Antiquaire_ID) VALUES (7, 1);
INSERT INTO Evaluer (Article_ID, Antiquaire_ID) VALUES (8, 3);
INSERT INTO Evaluer (Article_ID, Antiquaire_ID) VALUES (9, 4);
INSERT INTO Evaluer (Article_ID, Antiquaire_ID) VALUES (10, 5);

-- Insert sample data into Stock
INSERT INTO Stock (Depot_ID, Quantite, Seuil_alert) VALUES (1, 50, 5);
INSERT INTO Stock (Depot_ID, Quantite, Seuil_alert) VALUES (2, 30, 3);
INSERT INTO Stock (Depot_ID, Quantite, Seuil_alert) VALUES (3, 20, 2);

-- Link stock with articles (Contient)
INSERT INTO Contient (Article_ID, Depot_ID) VALUES (1, 1);
INSERT INTO Contient (Article_ID, Depot_ID) VALUES (2, 1);
INSERT INTO Contient (Article_ID, Depot_ID) VALUES (3, 2);
INSERT INTO Contient (Article_ID, Depot_ID) VALUES (4, 2);
INSERT INTO Contient (Article_ID, Depot_ID) VALUES (5, 3);
INSERT INTO Contient (Article_ID, Depot_ID) VALUES (6, 1);
INSERT INTO Contient (Article_ID, Depot_ID) VALUES (7, 1);
INSERT INTO Contient (Article_ID, Depot_ID) VALUES (8, 2);
INSERT INTO Contient (Article_ID, Depot_ID) VALUES (9, 3);
INSERT INTO Contient (Article_ID, Depot_ID) VALUES (10, 2);

-- Insert sample data into Client
INSERT INTO Client (Client_ID, Nom, Email, Telephone, Adresse) VALUES (1, 'Alice Moretti', 'alice.moretti@example.com', '555-2101', '12 Rue de la Paix, Paris');
INSERT INTO Client (Client_ID, Nom, Email, Telephone, Adresse) VALUES (2, 'Bob Smith', 'bob.smith@example.com', '555-2202', '45 Elm Street, London');
INSERT INTO Client (Client_ID, Nom, Email, Telephone, Adresse) VALUES (3, 'Carlos Ruiz', 'carlos.ruiz@example.es', '555-2303', 'Calle Mayor 10, Madrid');
INSERT INTO Client (Client_ID, Nom, Email, Telephone, Adresse) VALUES (4, 'Diana Chen', 'diana.chen@example.cn', '555-2404', '88 Nanjing Road, Shanghai');
INSERT INTO Client (Client_ID, Nom, Email, Telephone, Adresse) VALUES (5, 'Elena Rossi', 'elena.rossi@example.it', '555-2505', 'Via Roma 5, Rome');

-- Insert sample data into Vente and Comporte
INSERT INTO Vente (Vente_ID, Date_Vente, Nombre_Article, Client_ID) VALUES (1, DATE '2025-04-10', 2, 1);
INSERT INTO Vente (Vente_ID, Date_Vente, Nombre_Article, Client_ID) VALUES (2, DATE '2025-04-12', 1, 2);
INSERT INTO Vente (Vente_ID, Date_Vente, Nombre_Article, Client_ID) VALUES (3, DATE '2025-04-15', 3, 3);
INSERT INTO Vente (Vente_ID, Date_Vente, Nombre_Article, Client_ID) VALUES (4, DATE '2025-04-18', 1, 4);
INSERT INTO Vente (Vente_ID, Date_Vente, Nombre_Article, Client_ID) VALUES (5, DATE '2025-04-20', 2, 5);
INSERT INTO Vente (Vente_ID, Date_Vente, Nombre_Article, Client_ID) VALUES (6, DATE '2025-04-22', 1, 1);
INSERT INTO Vente (Vente_ID, Date_Vente, Nombre_Article, Client_ID) VALUES (7, DATE '2025-04-25', 2, 2);
INSERT INTO Vente (Vente_ID, Date_Vente, Nombre_Article, Client_ID) VALUES (8, DATE '2025-04-28', 1, 3);

INSERT INTO Comporte (Article_ID, Vente_ID) VALUES (1, 1);
INSERT INTO Comporte (Article_ID, Vente_ID) VALUES (5, 1);
INSERT INTO Comporte (Article_ID, Vente_ID) VALUES (4, 2);
INSERT INTO Comporte (Article_ID, Vente_ID) VALUES (2, 3);
INSERT INTO Comporte (Article_ID, Vente_ID) VALUES (3, 3);
INSERT INTO Comporte (Article_ID, Vente_ID) VALUES (6, 3);
INSERT INTO Comporte (Article_ID, Vente_ID) VALUES (7, 4);
INSERT INTO Comporte (Article_ID, Vente_ID) VALUES (8, 5);
INSERT INTO Comporte (Article_ID, Vente_ID) VALUES (9, 6);
INSERT INTO Comporte (Article_ID, Vente_ID) VALUES (10, 7);
INSERT INTO Comporte (Article_ID, Vente_ID) VALUES (1, 7);
INSERT INTO Comporte (Article_ID, Vente_ID) VALUES (3, 8);

-- Insert sample data into Paiement
INSERT INTO Paiement (Paiement_ID, Montant, Mode_paiement, Date_paiement, Vente_ID) VALUES (1, 2700.00, 'Virement', DATE '2025-04-11', 1);
INSERT INTO Paiement (Paiement_ID, Montant, Mode_paiement, Date_paiement, Vente_ID) VALUES (2, 4500.00, 'Chèque', DATE '2025-04-13', 2);
INSERT INTO Paiement (Paiement_ID, Montant, Mode_paiement, Date_paiement, Vente_ID) VALUES (3, 9900.00, 'Carte', DATE '2025-04-16', 3);
INSERT INTO Paiement (Paiement_ID, Montant, Mode_paiement, Date_paiement, Vente_ID) VALUES (4, 880.00, 'Espèce', DATE '2025-04-19', 4);
INSERT INTO Paiement (Paiement_ID, Montant, Mode_paiement, Date_paiement, Vente_ID) VALUES (5, 1500.00, 'Virement', DATE '2025-04-21', 5);
INSERT INTO Paiement (Paiement_ID, Montant, Mode_paiement, Date_paiement, Vente_ID) VALUES (6, 1200.00, 'Carte', DATE '2025-04-23', 6);
INSERT INTO Paiement (Paiement_ID, Montant, Mode_paiement, Date_paiement, Vente_ID) VALUES (7, 7600.00, 'Chèque', DATE '2025-04-26', 7);
INSERT INTO Paiement (Paiement_ID, Montant, Mode_paiement, Date_paiement, Vente_ID) VALUES (8, 3000.00, 'Virement', DATE '2025-04-29', 8);

-- Insert sample data into Departement
INSERT INTO Departement (Departement_ID, Nom, Localisation, Nombre_employe) VALUES (1, 'Ventes', 'Rez-de-chaussée', 5);
INSERT INTO Departement (Departement_ID, Nom, Localisation, Nombre_employe) VALUES (2, 'Stock', 'Sous-sol', 3);
INSERT INTO Departement (Departement_ID, Nom, Localisation, Nombre_employe) VALUES (3, 'Administration', '1er étage', 4);

-- Insert sample data into Employe
INSERT INTO Employe (Employe_ID, Nom, Prenom, Role, Telephone, Salaire, Departement_ID) VALUES (1, 'Durand', 'Antoine', 'Chef de vente', '555-3101', 3500.00, 1);
INSERT INTO Employe (Employe_ID, Nom, Prenom, Role, Telephone, Salaire, Departement_ID) VALUES (2, 'Leroy', 'Sophie', 'Vendeur', '555-3202', 2800.00, 1);
INSERT INTO Employe (Employe_ID, Nom, Prenom, Role, Telephone, Salaire, Departement_ID) VALUES (3, 'Bernard', 'Luc', 'Magasinier', '555-3303', 2400.00, 2);
INSERT INTO Employe (Employe_ID, Nom, Prenom, Role, Telephone, Salaire, Departement_ID) VALUES (4, 'Martin', 'Claire', 'Comptable', '555-3404', 3000.00, 3);
INSERT INTO Employe (Employe_ID, Nom, Prenom, Role, Telephone, Salaire, Departement_ID) VALUES (5, 'Petit', 'Marc', 'Analyste', '555-3505', 3100.00, 3);
INSERT INTO Employe (Employe_ID, Nom, Prenom, Role, Telephone, Salaire, Departement_ID) VALUES (6, 'Roux', 'Émilie', 'Vendeuse', '555-3606', 2700.00, 1);
INSERT INTO Employe (Employe_ID, Nom, Prenom, Role, Telephone, Salaire, Departement_ID) VALUES (7, 'Faure', 'Jean', 'Magasinier', '555-3707', 2300.00, 2);
INSERT INTO Employe (Employe_ID, Nom, Prenom, Role, Telephone, Salaire, Departement_ID) VALUES (8, 'Garnier', 'Louise', 'Assistante', '555-3808', 2600.00, 3);
INSERT INTO Employe (Employe_ID, Nom, Prenom, Role, Telephone, Salaire, Departement_ID) VALUES (9, 'Lopez', 'Miguel', 'Vendeur', '555-3909', 2750.00, 1);
INSERT INTO Employe (Employe_ID, Nom, Prenom, Role, Telephone, Salaire, Departement_ID) VALUES (10, 'Morel', 'Sarah', 'Magasinier', '555-4010', 2450.00, 2);

-- Link management assignments (Gerer)
INSERT INTO Gerer (Employe_ID, Depot_ID) VALUES (1, 1);
INSERT INTO Gerer (Employe_ID, Depot_ID) VALUES (3, 1);
INSERT INTO Gerer (Employe_ID, Depot_ID) VALUES (7, 2);
INSERT INTO Gerer (Employe_ID, Depot_ID) VALUES (10, 3);
INSERT INTO Gerer (Employe_ID, Depot_ID) VALUES (6, 1);

-- Insert sample data into Donnees_login
INSERT INTO Donnees_login (User_ID, Login_username, Password, Employe_ID) VALUES (1, 'adurand', 'hashed_pwd_1', 1);
INSERT INTO Donnees_login (User_ID, Login_username, Password, Employe_ID) VALUES (2, 'sleroy', 'hashed_pwd_2', 2);
INSERT INTO Donnees_login (User_ID, Login_username, Password, Employe_ID) VALUES (3, 'lbernard', 'hashed_pwd_3', 3);
INSERT INTO Donnees_login (User_ID, Login_username, Password, Employe_ID) VALUES (4, 'cmartin', 'hashed_pwd_4', 4);
INSERT INTO Donnees_login (User_ID, Login_username, Password, Employe_ID) VALUES (5, 'mpetit', 'hashed_pwd_5', 5);

-- Insert sample data into Agence_touristique
INSERT INTO Agence_touristique (Agence_ID, Nom, Email, Date_Visite, Nombre_Tourist, Telephone, Site_web) VALUES (1, 'Paris Antiques Tour', 'contact@parisantique.com', DATE '2025-04-05', 15, '555-5101', 'http://parisantique.com');
INSERT INTO Agence_touristique (Agence_ID, Nom, Email, Date_Visite, Nombre_Tourist, Telephone, Site_web) VALUES (2, 'Historic London Walks', 'info@londonwalks.co.uk', DATE '2025-04-12', 12, '555-5202', 'http://londonwalks.co.uk');
INSERT INTO Agence_touristique (Agence_ID, Nom, Email, Date_Visite, Nombre_Tourist, Telephone, Site_web) VALUES (3, 'Madrid Antique Routes', 'tour@madridroutes.es', DATE '2025-04-18', 10, '555-5303', 'http://madridroutes.es');

-- Link collaborations (Collabore)
INSERT INTO Collabore (Departement_ID, Agence_ID) VALUES (1, 1);
INSERT INTO Collabore (Departement_ID, Agence_ID) VALUES (1, 2);
INSERT INTO Collabore (Departement_ID, Agence_ID) VALUES (2, 3);
INSERT INTO Collabore (Departement_ID, Agence_ID) VALUES (3, 1);
INSERT INTO Collabore (Departement_ID, Agence_ID) VALUES (3, 2);

-- 1. Fournisseur (add suppliers 6-8)
INSERT INTO Fournisseur (Fournisseur_ID, Nom, Telephone, Email) VALUES (6, 'Renaissance Imports', '555-0606', 'contact@renaissanceimports.com');
INSERT INTO Fournisseur (Fournisseur_ID, Nom, Telephone, Email) VALUES (7, 'AncientArtifacts LLC', '555-0707', 'sales@ancientartifacts.com');
INSERT INTO Fournisseur (Fournisseur_ID, Nom, Telephone, Email) VALUES (8, 'Vintage Vault', '555-0808', 'info@vintagevault.net');

-- 2. Approvisionnement (add IDs 6-8)
INSERT INTO Approvisionnement (Approvisionnement_ID, Date_appro) VALUES (6, DATE '2025-04-15');
INSERT INTO Approvisionnement (Approvisionnement_ID, Date_appro) VALUES (7, DATE '2025-04-22');
INSERT INTO Approvisionnement (Approvisionnement_ID, Date_appro) VALUES (8, DATE '2025-05-01');

-- 3. Categorie (add ID 6)
INSERT INTO Categorie (Categorie_ID, Nom_Categorie, Contexte_historique) VALUES (6, 'Armes', 'Armes anciennes de différentes époques et cultures.');

-- 4. Article (add IDs 11-15)
INSERT INTO Article (Article_ID, Nom, Description, Prix, Date_Ajout, Etat, Approvisionnement_ID, Fournisseur_ID)
VALUES (11, 'Épée médiévale', 'Épée forgée vers le XIVe siècle, lame en acier.', 2300.00, DATE '2025-04-16', 'Bon', 6, 6);
INSERT INTO Article (Article_ID, Nom, Description, Prix, Date_Ajout, Etat, Approvisionnement_ID, Fournisseur_ID)
VALUES (12, 'Casque viking', 'Casque en fer avec cornes, daté du IXe siècle.', 1850.00, DATE '2025-04-23', 'Usé', 7, 7);
INSERT INTO Article (Article_ID, Nom, Description, Prix, Date_Ajout, Etat, Approvisionnement_ID, Fournisseur_ID)
VALUES (13, 'Bouclier romain', 'Bouclier en bois et cuir, époque romaine.', 1500.00, DATE '2025-05-02', 'Bon', 8, 8);
INSERT INTO Article (Article_ID, Nom, Description, Prix, Date_Ajout, Etat, Approvisionnement_ID, Fournisseur_ID)
VALUES (14, 'Mousquet à silex', 'Arme à feu du XVIIIe siècle, à silex.', 3200.00, DATE '2025-04-18', 'Mauvais', 6, 7);
INSERT INTO Article (Article_ID, Nom, Description, Prix, Date_Ajout, Etat, Approvisionnement_ID, Fournisseur_ID)
VALUES (15, 'Dague viking', 'Dague courte en acier, fin IXe siècle.', 900.00, DATE '2025-05-03', 'Bon', 8, 6);

-- 5. Appartient_a (assign new articles to categories)
INSERT INTO Appartient_a (Article_ID, Categorie_ID) VALUES (11, 6);
INSERT INTO Appartient_a (Article_ID, Categorie_ID) VALUES (12, 6);
INSERT INTO Appartient_a (Article_ID, Categorie_ID) VALUES (13, 6);
INSERT INTO Appartient_a (Article_ID, Categorie_ID) VALUES (14, 6);
INSERT INTO Appartient_a (Article_ID, Categorie_ID) VALUES (15, 6);

-- 6. Stock (add Depot_ID 4)
INSERT INTO Stock (Depot_ID, Quantite, Seuil_alert) VALUES (4, 25, 5);

-- 7. Contient (link new articles to stock)
INSERT INTO Contient (Article_ID, Depot_ID) VALUES (11, 4);
INSERT INTO Contient (Article_ID, Depot_ID) VALUES (12, 4);
INSERT INTO Contient (Article_ID, Depot_ID) VALUES (13, 4);
INSERT INTO Contient (Article_ID, Depot_ID) VALUES (14, 4);
INSERT INTO Contient (Article_ID, Depot_ID) VALUES (15, 4);

-- 8. Client (add clients 6-10)
INSERT INTO Client (Client_ID, Nom, Email, Telephone, Adresse) VALUES (6, 'Salma Ben Salah', 'salma.bensalah@example.tn', '555-2606', '5 Rue de Carthage, Tunis');
INSERT INTO Client (Client_ID, Nom, Email, Telephone, Adresse) VALUES (7, 'Javier Morales', 'javier.morales@example.es', '555-2707', 'Calle Toledo 23, Madrid');
INSERT INTO Client (Client_ID, Nom, Email, Telephone, Adresse) VALUES (8, 'Sophie Dubois', 'sophie.dubois@example.fr', '555-2808', '10 Rue Saint-Honoré, Paris');
INSERT INTO Client (Client_ID, Nom, Email, Telephone, Adresse) VALUES (9, 'Liam OConnor', 'liam.oconnor@example.ie', '555-2909', '2 Abbey Street, Dublin');
INSERT INTO Client (Client_ID, Nom, Email, Telephone, Adresse) VALUES (10, 'Mia Chen', 'mia.chen@example.cn', '555-3000', '1 Beijing Road, Beijing');

-- 9. Vente (add sales 9-12)
INSERT INTO Vente (Vente_ID, Date_Vente, Nombre_Article, Client_ID) VALUES (9, DATE '2025-05-04', 2, 6);
INSERT INTO Vente (Vente_ID, Date_Vente, Nombre_Article, Client_ID) VALUES (10, DATE '2025-05-05', 1, 7);
INSERT INTO Vente (Vente_ID, Date_Vente, Nombre_Article, Client_ID) VALUES (11, DATE '2025-05-06', 3, 8);
INSERT INTO Vente (Vente_ID, Date_Vente, Nombre_Article, Client_ID) VALUES (12, DATE '2025-05-07', 1, 9);

-- 10. Comporte (link new sales)
INSERT INTO Comporte (Article_ID, Vente_ID) VALUES (11, 9);
INSERT INTO Comporte (Article_ID, Vente_ID) VALUES (12, 9);
INSERT INTO Comporte (Article_ID, Vente_ID) VALUES (13, 10);
INSERT INTO Comporte (Article_ID, Vente_ID) VALUES (14, 11);
INSERT INTO Comporte (Article_ID, Vente_ID) VALUES (15, 11);
INSERT INTO Comporte (Article_ID, Vente_ID) VALUES (1, 12);

-- 11. Paiement (add payments 9-12)
INSERT INTO Paiement (Paiement_ID, Montant, Mode_paiement, Date_paiement, Vente_ID) VALUES (9, 4150.00, 'Chèque', DATE '2025-05-05', 9);
INSERT INTO Paiement (Paiement_ID, Montant, Mode_paiement, Date_paiement, Vente_ID) VALUES (10, 1850.00, 'Espèce', DATE '2025-05-06', 10);
INSERT INTO Paiement (Paiement_ID, Montant, Mode_paiement, Date_paiement, Vente_ID) VALUES (11, 10200.00, 'Virement', DATE '2025-05-07', 11);
INSERT INTO Paiement (Paiement_ID, Montant, Mode_paiement, Date_paiement, Vente_ID) VALUES (12, 1200.00, 'Carte', DATE '2025-05-08', 12);

