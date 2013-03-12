<div id="contenu">
    <h2>Liste des employés</h2>
    <div class="corpsForm">
        <table>
        <tr>
            <th> Nom </th>
            <th> Prénom </th>
        </tr>
        
         <?php    
	   foreach ($lesEmployes as $unEmploye) {
			$nomEmp = $unEmploye['nom'];
			$prenomEmp = $unEmploye['prenom'];
         ?>
        
            <tr> <td><?php echo $nomEmp ?></td>
                <td><?php echo $prenomEmp ?></td>
         <?php	
            }
         ?>
        </table>
    </div>
</div>