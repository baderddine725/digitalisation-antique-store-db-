# digitalisation-magazine-antiquity
 Digitalisation de la Gestion d’un Magasin d’Antiquités
# Système de Gestion d'un Magasin d'Antiquités 🏺

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

Projet de base de données relationnelle pour la gestion d'un magasin d'antiquités tunisien. Développé en SQL sur 1 semaine.
Le projet s’inscrit dans le cadre de la digitalisation de la gestion d’un magasin d’antiquités. L’objectif est de développer une solution logicielle permettant une gestion efficace du stock et des ventes.
Concevoir et déployer une base de données relationnelle robuste pour un magasin d’antiquités, afin de :
Faciliter la gestion des articles antiques (ajout, modification, suppression, recherche).
Suivre les ventes et le chiffre d’affaires.
Assurer la persistance et la sauvegarde des données.

Actuellement, en Tunisie, la gestion des antiquités est réalisée de manière manuelle ou sur des fichiers simples (Excel, papier). Cette méthode est peu efficace, sujette aux erreurs et ne permet pas une traçabilité optimale des articles et des transactions.

# Besoins-Fonctionnels

   Gestion des articles : Ajouter, modifier, rechercher et supprimer un article.
   Gestion des ventes : Enregistrer une vente et mettre à jour l’état des articles vendus.
   Calcul du chiffre d’affaires : Suivi des ventes et génération de rapports financiers.
   Sauvegarde et chargement des données : Assurer la persistance des informations.

   
## 📋 Table des matières
- [Objectifs](#objectifs)
- [Fonctionnalités](#fonctionnalités)
- [Installation](#installation)
- [Structure de la BD](#structure-de-la-base-de-données)
- [Démonstration](#démonstration)

## 🎯 Objectifs
- Digitaliser la gestion des antiquités
- Suivi du stock et des ventes en temps réel
- Génération automatique de rapports financiers
- Sauvegarde sécurisée des données

## ⚙️ Fonctionnalités
```plaintext
✔ Gestion des articles (CRUD complet)
✔ Suivi des transactions de vente
✔ Calcul automatique du chiffre d'affaires
✔ Système de sauvegarde/restauration
```

## 🛠 Installation
1. Importer les scripts SQL :
```bash
psql -U postgres -f sql/01_tables_contraintes.sql
psql -U postgres -f sql/02_donnees_test.sql
```

2. Exécuter des requêtes de test :
```sql
-- Exemple de requête
SELECT * FROM articles WHERE siècle = 'XVIII';
```

## 🗄 Structure de la Base de Données
![Diagramme Entité-Association](https://drive.google.com/file/d/14LWlIXXiWsu0EZHDazmG62ZAz4gVrH_m/view?usp=sharing)
![Diagramme Relationnel](https://drive.google.com/file/d/1EP9_Nzj8EUiNOBWusuESMJs-PPd8cu4U/view?usp=sharing)


Tables principales :
-`Article` (id_article, nom, description, prix, etat, date_ajout, id_categorie)

-`Catégories` (id_categorie, nom_categorie, contexte_historique)

-`Client` (id_client, nom, email, telephone, adresse)

-`Vente` (vente_id, date_vente, nombre_article, id_client, id_employe)

-`Employé` (employe_id, nom, prenom, role, telephone, salaire)

-`Fournisseur` (fournisseur_id, nom, telephone, email)

-`Approvisionnement` (id_approvisionnement, date_appro, fournisseur_id)

-`Paiement` (paiement_id, montant, mode_paiement, date_paiement, vente_id)

-`Antiquaire` (antiquaire_id, nom, specialité, telephone, email, avis)

-`Stock` (depot_id, quantité, seuil_alert, id_article)

-`Données_login` (user_id, login_username, password, employe_id)

-`Agences_touristiques` (agence_id, nom, email, date_visit, nombre_tourist, telephone, site_web)

-`Départements` (departement_id, nom, localisation, nombre_employé)



## 🎥 Démonstration
[Vidéo de démonstration](media/demo_video.mp4) | [Lien YouTube]([https://youtu.be/...](https://youtu.be/mD_l018JPVQ))

---
