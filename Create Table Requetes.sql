CREATE TABLE Fournisseur (
    Fournisseur_ID NUMBER PRIMARY KEY,
    Nom VARCHAR2(100),
    Telephone VARCHAR2(20),
    Email VARCHAR2(100)
);

CREATE TABLE Approvisionnement (
    Approvisionnement_ID NUMBER PRIMARY KEY,
    Date_appro DATE
);

CREATE TABLE Article (
    Article_ID NUMBER PRIMARY KEY,
    Nom VARCHAR2(100),
    Description VARCHAR2(500),
    Prix NUMBER(10, 2),
    Date_Ajout DATE,
    Etat VARCHAR2(50),
    Approvisionnement_ID NUMBER,
    Fournisseur_ID NUMBER,
    FOREIGN KEY (Approvisionnement_ID) REFERENCES Approvisionnement(Approvisionnement_ID),
    FOREIGN KEY (Fournisseur_ID) REFERENCES Fournisseur(Fournisseur_ID)
);

CREATE TABLE Categorie (
    Categorie_ID NUMBER PRIMARY KEY,
    Nom_Categorie VARCHAR2(100),
    Contexte_historique VARCHAR2(500)
);

CREATE TABLE Appartient_a (
    Article_ID NUMBER,
    Categorie_ID NUMBER,
    PRIMARY KEY (Article_ID, Categorie_ID),
    FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID),
    FOREIGN KEY (Categorie_ID) REFERENCES Categorie(Categorie_ID)
);

CREATE TABLE Antiquaire (
    Antiquaire_ID NUMBER PRIMARY KEY,
    Nom VARCHAR2(100),
    Specialite VARCHAR2(100),
    Telephone VARCHAR2(20),
    Email VARCHAR2(100),
    Avis VARCHAR2(500)
);

CREATE TABLE Evaluer (
    Article_ID NUMBER,
    Antiquaire_ID NUMBER,
    PRIMARY KEY (Article_ID, Antiquaire_ID),
    FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID),
    FOREIGN KEY (Antiquaire_ID) REFERENCES Antiquaire(Antiquaire_ID)
);

CREATE TABLE Stock (
    Depot_ID NUMBER PRIMARY KEY,
    Quantite NUMBER,
    Seuil_alert NUMBER
);

CREATE TABLE Contient (
    Article_ID NUMBER,
    Depot_ID NUMBER,
    PRIMARY KEY (Article_ID, Depot_ID),
    FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID),
    FOREIGN KEY (Depot_ID) REFERENCES Stock(Depot_ID)
);

CREATE TABLE Client (
    Client_ID NUMBER PRIMARY KEY,
    Nom VARCHAR2(100),
    Email VARCHAR2(100),
    Telephone VARCHAR2(20),
    Adresse VARCHAR2(200)
);

CREATE TABLE Vente (
    Vente_ID NUMBER PRIMARY KEY,
    Date_Vente DATE,
    Nombre_Article NUMBER,
    Client_ID NUMBER,
    FOREIGN KEY (Client_ID) REFERENCES Client(Client_ID)
);

CREATE TABLE Comporte (
    Article_ID NUMBER,
    Vente_ID NUMBER,
    PRIMARY KEY (Article_ID, Vente_ID),
    FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID),
    FOREIGN KEY (Vente_ID) REFERENCES Vente(Vente_ID)
);

CREATE TABLE Fournisseur (
    Fournisseur_ID NUMBER PRIMARY KEY,
    Nom VARCHAR2(100) NOT NULL,
    Telephone VARCHAR2(20),
    Email VARCHAR2(100)
);

CREATE TABLE Approvisionnement (
    Approvisionnement_ID NUMBER PRIMARY KEY,
    Date_appro DATE NOT NULL
);

CREATE TABLE Article (
    Article_ID NUMBER PRIMARY KEY,
    Nom VARCHAR2(100) NOT NULL,
    Description VARCHAR2(500),
    Prix NUMBER(10, 2) NOT NULL,
    Date_Ajout DATE DEFAULT SYSDATE,
    Etat VARCHAR2(50) CHECK (Etat IN ('Neuf', 'Bon', 'Usé', 'Mauvais')),
    Approvisionnement_ID NUMBER,
    Fournisseur_ID NUMBER,
    FOREIGN KEY (Approvisionnement_ID) REFERENCES Approvisionnement(Approvisionnement_ID) ON DELETE SET NULL,
    FOREIGN KEY (Fournisseur_ID) REFERENCES Fournisseur(Fournisseur_ID) ON DELETE SET NULL
);

CREATE TABLE Categorie (
    Categorie_ID NUMBER PRIMARY KEY,
    Nom_Categorie VARCHAR2(100) NOT NULL,
    Contexte_historique VARCHAR2(500)
);

CREATE TABLE Appartient_a (
    Article_ID NUMBER,
    Categorie_ID NUMBER,
    PRIMARY KEY (Article_ID, Categorie_ID),
    FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID) ON DELETE CASCADE,
    FOREIGN KEY (Categorie_ID) REFERENCES Categorie(Categorie_ID) ON DELETE CASCADE
);

CREATE TABLE Antiquaire (
    Antiquaire_ID NUMBER PRIMARY KEY,
    Nom VARCHAR2(100) NOT NULL,
    Specialite VARCHAR2(100),
    Telephone VARCHAR2(20),
    Email VARCHAR2(100),
    Avis VARCHAR2(500)
);

CREATE TABLE Evaluer (
    Article_ID NUMBER,
    Antiquaire_ID NUMBER,
    PRIMARY KEY (Article_ID, Antiquaire_ID),
    FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID) ON DELETE CASCADE,
    FOREIGN KEY (Antiquaire_ID) REFERENCES Antiquaire(Antiquaire_ID) ON DELETE CASCADE
);

CREATE TABLE Stock (
    Depot_ID NUMBER PRIMARY KEY,
    Quantite NUMBER NOT NULL,
    Seuil_alert NUMBER NOT NULL
);

CREATE TABLE Contient (
    Article_ID NUMBER,
    Depot_ID NUMBER,
    PRIMARY KEY (Article_ID, Depot_ID),
    FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID) ON DELETE CASCADE,
    FOREIGN KEY (Depot_ID) REFERENCES Stock(Depot_ID) ON DELETE CASCADE
);

CREATE TABLE Client (
    Client_ID NUMBER PRIMARY KEY,
    Nom VARCHAR2(100) NOT NULL,
    Email VARCHAR2(100),
    Telephone VARCHAR2(20),
    Adresse VARCHAR2(200)
);

CREATE TABLE Vente (
    Vente_ID NUMBER PRIMARY KEY,
    Date_Vente DATE DEFAULT SYSDATE,
    Nombre_Article NUMBER NOT NULL,
    Client_ID NUMBER,
    FOREIGN KEY (Client_ID) REFERENCES Client(Client_ID) ON DELETE SET NULL
);

CREATE TABLE Comporte (
    Article_ID NUMBER,
    Vente_ID NUMBER,
    PRIMARY KEY (Article_ID, Vente_ID),
    FOREIGN KEY (Article_ID) REFERENCES Article(Article_ID) ON DELETE CASCADE,
    FOREIGN KEY (Vente_ID) REFERENCES Vente(Vente_ID) ON DELETE CASCADE
);

CREATE TABLE Paiement (
    Paiement_ID NUMBER PRIMARY KEY,
    Montant NUMBER(10,2) NOT NULL,
    Mode_paiement VARCHAR2(50) CHECK (Mode_paiement IN ('Espèce', 'Carte', 'Chèque', 'Virement')),
    Date_paiement DATE NOT NULL,
    Vente_ID NUMBER,
    FOREIGN KEY (Vente_ID) REFERENCES Vente(Vente_ID) ON DELETE CASCADE
);

CREATE TABLE Departement (
    Departement_ID NUMBER PRIMARY KEY,
    Nom VARCHAR2(100) NOT NULL,
    Localisation VARCHAR2(100),
    Nombre_employe NUMBER
);

CREATE TABLE Employe (
    Employe_ID NUMBER PRIMARY KEY,
    Nom VARCHAR2(100) NOT NULL,
    Prenom VARCHAR2(100) NOT NULL,
    Role VARCHAR2(50),
    Telephone VARCHAR2(20),
    Salaire NUMBER(10, 2),
    Departement_ID NUMBER,
    FOREIGN KEY (Departement_ID) REFERENCES Departement(Departement_ID) ON DELETE SET NULL
);

CREATE TABLE Gerer (
    Employe_ID NUMBER,
    Depot_ID NUMBER,
    PRIMARY KEY (Employe_ID, Depot_ID),
    FOREIGN KEY (Employe_ID) REFERENCES Employe(Employe_ID) ON DELETE CASCADE,
    FOREIGN KEY (Depot_ID) REFERENCES Stock(Depot_ID) ON DELETE CASCADE
);

CREATE TABLE Donnees_login (
    User_ID NUMBER PRIMARY KEY,
    Login_username VARCHAR2(50) NOT NULL,
    Password VARCHAR2(256) NOT NULL, -- NOTE: Store hashed passwords, not plain text
    Employe_ID NUMBER,
    FOREIGN KEY (Employe_ID) REFERENCES Employe(Employe_ID) ON DELETE CASCADE
);

CREATE TABLE Agence_touristique (
    Agence_ID NUMBER PRIMARY KEY,
    Nom VARCHAR2(100) NOT NULL,
    Email VARCHAR2(100),
    Date_Visite DATE,
    Nombre_Tourist NUMBER,
    Telephone VARCHAR2(20),
    Site_web VARCHAR2(200)
);

CREATE TABLE Collabore (
    Departement_ID NUMBER,
    Agence_ID NUMBER,
    PRIMARY KEY (Departement_ID, Agence_ID),
    FOREIGN KEY (Departement_ID) REFERENCES Departement(Departement_ID) ON DELETE CASCADE,
    FOREIGN KEY (Agence_ID) REFERENCES Agence_touristique(Agence_ID) ON DELETE CASCADE
);

