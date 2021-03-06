<?php
/** 
 * Classe d'accès aux données. 
 
 * Utilise les services de la classe PDO
 * pour l'application exempleMVC du cours sur la bdd bddemployés
 * Les attributs sont tous statiques,
 * les 4 premiers pour la connexion
 * $monPdo de type PDO 
 * $monPdo qui contiendra l'unique instance de la classe
 * @package default
 * @author AP
 * @version    1.0
 * @link       http://www.php.net/manual/fr/book.pdo.php
 */

class PdoExemple{   		
      	private static $serveur='mysql:host=localhost';
      	private static $bdd='dbname=bddemployes';   		
      	private static $user='root' ;    		
      	private static $mdp='' ;
        private static $monPdo;
	private static $monPdoExemple=null;

/**
 * Constructeur privé, crée l'instance de PDO qui sera sollicitée
 * pour toutes les méthodes de la classe
 */				
	private function __construct(){
        try {
    	PdoExemple::$monPdo = new PDO(PdoExemple::$serveur.';'.PdoExemple::$bdd, PdoExemple::$user, PdoExemple::$mdp); 
		PdoExemple::$monPdo->query("SET CHARACTER SET utf8");
	
        } catch (Exception $e) {
            throw new Exception("Erreur Ã  la connexion \n" . $e->getMessage());
        }
        }

	public function _destruct(){
		PdoExemple::$monPdo = null;
	}
/**
 * Fonction statique qui crée l'unique instance de la classe PdoExemple
 
 * Appel : $instancePdoExemple = PdoExemple::getPdoExemple();
 
 * @return l'unique objet de la classe PdoExemple
 */
	public  static function getPdoExemple(){
		if(PdoExemple::$monPdoExemple==null){
			PdoExemple::$monPdoExemple= new PdoExemple();
		}
		return PdoExemple::$monPdoExemple;  
	}
   public function getInfosVisiteur($login,$mdp){
        $req="select nom, prenom from utilisateur where login='".$login."' and  mdp='".$mdp."'"  ;  
        $rs = PdoExemple::$monPdo->query($req);
        $Visiteur = $rs->fetch();
		return $Visiteur;
   
// retourne les informations sur le visiteur (la table utilisateur)
   }
   public function getLesProjets() {
     // retourne un tableau associatif contenant tous les projets
         $req="select codeprojet,nomprojet,dureeprevue from projet";
         $rs = PdoExemple::$monPdo->query($req);
		$ligne = $rs->fetchAll(PDO::FETCH_ASSOC);
		return $ligne;
        // ou return $this->_pdo->query($query)->fetchAll(PDO::FETCH_ASSOC);
    }
    public function getLesEmployes() {
        $req="select nom,prenom from employeinformaticien";
        $rs = PdoExemple::$monPdo->query($req);
                $ligne = $rs->fetchAll (PDO::FETCH_ASSOC);
                return $ligne;
    }

    public function getDetailProjet() {
        $req= "select projet.codeprojet, nomprojet, nom, prenom 
            FROM projet join employeinformaticien
            ON projet.codeprojet=employeinformaticien.codeprojet;";
             $rs = PdoExemple::$monPdo->query($req);
                $ligne = $rs->fetchAll (PDO::FETCH_ASSOC);
                return $ligne;
        
    }
}   
  ?>
