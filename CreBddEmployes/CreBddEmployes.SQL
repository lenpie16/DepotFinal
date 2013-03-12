DROP DATABASE IF EXISTS BddEMPLOYES;

CREATE DATABASE IF NOT EXISTS BddEMPLOYES;
USE BddEMPLOYES;
# -----------------------------------------------------------------------------
#       TABLE : EMPLOYEINFORMATICIEN
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS EMPLOYEINFORMATICIEN
 (
   NUMERO INTEGER(2) NOT NULL  ,
   NOM VARCHAR (25) NULL  ,
   PRENOM VARCHAR (25) NULL  ,
   DATENAISSANCE VARCHAR (10) NULL  ,
   SALAIREM SMALLINT(3) NULL ,
   PRIMEM SMALLINT(4) NULL  ,
   CODEPROJET VARCHAR (5) NULL  ,
   PRIMARY KEY (NUMERO) 
 ) 
;

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE EMPLOYEINFORMATICIEN
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_EMPLOYEINFORMATICIEN_PROJET
     ON EMPLOYEINFORMATICIEN (CODEPROJET ASC);

# -----------------------------------------------------------------------------
#       TABLE : PROJET
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS PROJET
 (
   CODEPROJET VARCHAR (5) NOT NULL  ,
   NOMPROJET VARCHAR (25) NULL  ,
   DUREEPREVUE SMALLINT(2) NULL  
   , PRIMARY KEY (CODEPROJET) 
 ) 
 ;

# -----------------------------------------------------------------------------
#       TABLE : EMPLOYENONINFORMATICIEN
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS EMPLOYENONINFORMATICIEN
 (
   NUMERO INTEGER(2) NOT NULL  ,
   NOM VARCHAR (25) NULL  ,
   PRENOM VARCHAR (25) NULL  ,
   DATENAISSANCE VARCHAR (10) NULL  ,
   SALAIREM SMALLINT(0) NULL  , 
   PRIMEA SMALLINT(0) NULL  ,
  PRIMARY KEY (NUMERO) 
 ) 
;


# -----------------------------------------------------------------------------
#       CREATION DES REFERENCES DE TABLE
# -----------------------------------------------------------------------------


ALTER TABLE EMPLOYEINFORMATICIEN 
  ADD FOREIGN KEY FK_EMPLOYEINFORMATICIEN_PROJET (CODEPROJET)
      REFERENCES PROJET (CODEPROJET) ;


