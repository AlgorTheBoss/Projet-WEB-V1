/*------------------------------------------------------------
*        Script SQLSERVER 
------------------------------------------------------------*/


/*------------------------------------------------------------
-- Table: Entreprise
------------------------------------------------------------*/
CREATE TABLE Entreprise(
	id_entreprise             INT IDENTITY (1,1) NOT NULL ,
	nom_entreprise            VARCHAR (120) NOT NULL ,
	domaine_entreprise        VARCHAR (120) NOT NULL ,
	adresse_mail_entreprise   VARCHAR (120) NOT NULL ,
	telephone_entreprise      VARCHAR (120) NOT NULL ,
	nb_employes               INT  NOT NULL  ,
	CONSTRAINT Entreprise_PK PRIMARY KEY (id_entreprise)
);


/*------------------------------------------------------------
-- Table: Adresse
------------------------------------------------------------*/
CREATE TABLE Adresse(
	id_adresse      INT IDENTITY (1,1) NOT NULL ,
	num_voie        INT  NOT NULL ,
	bonus_voie      VARCHAR (10) NOT NULL ,
	nom_voie        VARCHAR (120) NOT NULL ,
	ville           VARCHAR (120) NOT NULL ,
	code_postal     INT  NOT NULL ,
	id_entreprise   INT  NOT NULL  ,
	CONSTRAINT Adresse_PK PRIMARY KEY (id_adresse)

	,CONSTRAINT Adresse_Entreprise_FK FOREIGN KEY (id_entreprise) REFERENCES Entreprise(id_entreprise)
	,CONSTRAINT Adresse_Entreprise_AK UNIQUE (id_entreprise)
);


/*------------------------------------------------------------
-- Table: offres
------------------------------------------------------------*/
CREATE TABLE offres(
	id_offre        INT IDENTITY (1,1) NOT NULL ,
	nom_offre       VARCHAR (120) NOT NULL ,
	domaine_offre   VARCHAR (120) NOT NULL ,
	type_contrat    VARCHAR (120) NOT NULL ,
	salaire         INT  NOT NULL ,
	decription      VARCHAR (255) NOT NULL ,
	whishlist       bit  NOT NULL ,
	candidatee      bit  NOT NULL ,
	id_entreprise   INT  NOT NULL  ,
	CONSTRAINT offres_PK PRIMARY KEY (id_offre)

	,CONSTRAINT offres_Entreprise_FK FOREIGN KEY (id_entreprise) REFERENCES Entreprise(id_entreprise)
);


/*------------------------------------------------------------
-- Table: utilisateur
------------------------------------------------------------*/
CREATE TABLE utilisateur(
	id_user               INT IDENTITY (1,1) NOT NULL ,
	nom_user              VARCHAR (120) NOT NULL ,
	prenom_user           VARCHAR (120) NOT NULL ,
	date_naissance_user   DATETIME NOT NULL ,
	adresse_mail_user     VARCHAR (120) NOT NULL ,
	telephone_user        VARCHAR (120) NOT NULL ,
	campus_user           VARCHAR (120) NOT NULL ,
	promotion_user        VARCHAR (120) NOT NULL ,
	type_user             VARCHAR (120) NOT NULL ,
	created_at            DATETIME NOT NULL ,
	updated_at            DATETIME NOT NULL ,
	deleted_at            DATETIME   ,
	CONSTRAINT utilisateur_PK PRIMARY KEY (id_user)
);


/*------------------------------------------------------------
-- Table: role
------------------------------------------------------------*/
CREATE TABLE role(
	id_role      INT IDENTITY (1,1) NOT NULL ,
	tittle       VARCHAR (120) NOT NULL ,
	created_at   DATETIME NOT NULL ,
	updated_at   DATETIME NOT NULL ,
	delated_at   DATETIME  ,
	id_user      INT  NOT NULL  ,
	CONSTRAINT role_PK PRIMARY KEY (id_role)

	,CONSTRAINT role_utilisateur_FK FOREIGN KEY (id_user) REFERENCES utilisateur(id_user)
	,CONSTRAINT role_utilisateur_AK UNIQUE (id_user)
);


/*------------------------------------------------------------
-- Table: candidate
------------------------------------------------------------*/
CREATE TABLE candidate(
	id_user    INT  NOT NULL ,
	id_offre   INT  NOT NULL  ,
	CONSTRAINT candidate_PK PRIMARY KEY (id_user,id_offre)

	,CONSTRAINT candidate_utilisateur_FK FOREIGN KEY (id_user) REFERENCES utilisateur(id_user)
	,CONSTRAINT candidate_offres0_FK FOREIGN KEY (id_offre) REFERENCES offres(id_offre)
);


/*------------------------------------------------------------
-- Table: favorise
------------------------------------------------------------*/
CREATE TABLE favorise(
	id_user    INT  NOT NULL ,
	id_offre   INT  NOT NULL  ,
	CONSTRAINT favorise_PK PRIMARY KEY (id_user,id_offre)

	,CONSTRAINT favorise_utilisateur_FK FOREIGN KEY (id_user) REFERENCES utilisateur(id_user)
	,CONSTRAINT favorise_offres0_FK FOREIGN KEY (id_offre) REFERENCES offres(id_offre)
);



