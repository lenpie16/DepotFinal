<?php
$action = $_REQUEST['action'];
switch($action){
	case 'simple':{
		include("vues/v_menu.php");
                $lesProjets=$pdo-> getLesProjets();
                include("vues/v_listeProjets.php");
		break;
	}
        case 'detail':{
                include("vues/v_menu.php");
                $lesDetailsProjets=$pdo-> getDetailProjet();
                include ("vues/v_listeProjetsDetails.php");
                break;
        }
}
?>
