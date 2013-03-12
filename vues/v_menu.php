 <!-- Division pour le menu -->
    <div id="menuGauche">
    
        <ul id="menuList">
            <li >
		 Bienvenu(e) : <?php echo $_SESSION['login']?>	
		</li>
           <li >
              <a href="index.php?do=lesProjets" title="Les projets">Les projets</a>
           </li>
           <ol>
               <li>
                   <a href="index.php?do=lesProjets&action=detail" title="Les projets">En detail</a>
               </li>
               <li>
                   <a href="index.php?do=lesProjets&action=simple" title="Les projets">projet seul</a>
               </li>
           </ol>
           <li >
              <a href="index.php?do=lesEmployes" title="Les employés">Les employés informaticiens</a>
           </li>
             <li >
              <a href="index.php?do=connexion&action=deconnexion" title="Se déconnecter">Déconnexion</a>
           </li>
           
         </ul>
        
    </div>
    