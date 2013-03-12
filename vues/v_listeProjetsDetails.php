<div id="contenu">
      <h2>Liste des projets </h2>
      <div class="corpsForm">
     <table >
  	   <caption>Descriptif des projets
       </caption>
             <tr>
                <th >code projet</th>  
                <th >libellé</th>  
                <th >Nom employés associés </th>
                <th >Prenom employés associés </th>
             </tr>
          
    <?php    
	   foreach ($lesDetailsProjets as $ProjetDetail) {
			$codeProjet = $ProjetDetail['codeprojet'];
			$nomProjet = $ProjetDetail['nomprojet'];
                        $nomEmp = $ProjetDetail['nom'];
                        $prenomEmp= $ProjetDetail['prenom'];
		?>		
            <tr> <td><?php echo $codeProjet ?></td>
                <td><?php echo $nomProjet ?></td>
                <td><?php echo $nomEmp ?></td>
                <td><?php echo $prenomEmp ?></td>
    <?php		 
          
          }
?>	  
                                          
    </table>
      </div>
</div>
