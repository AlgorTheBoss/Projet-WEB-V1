<!DOCTYPE html>
<html>
<head>
	<title>Liste des offres de stage</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<div class="container">
		<h1>Liste des offres de stage</h1>
		<table id="users" class="users">
			<thead>
				<tr id="tr">
					<th><button onclick=filter_name()>Nom</button></th>
					<th>Prénom</th>
					<th>Email</th>
					<th>Date de naissance</th>
					<th>Numéro de téléphone</th>
					<th>Graduation</th>
				</tr>
			</thead>
			<tbody>
			<?php
			$dsn = "mysql:host=localhost:3306;dbname=BDD_user;charset=utf8mb4";
			$options = [
				PDO::ATTR_EMULATE_PREPARES => false,
				PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
				PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
			];
			try {
				$pdo = new PDO($dsn, "root", "Grillon.2003", $options);
			} catch (Exception $e) {
				die('Erreur : ' . $e->getMessage());
			}
			try {
				$stmt = $pdo->prepare("SELECT * FROM users WHERE roles_id_roles='3'");
				$stmt->execute();
				$users = $stmt->fetchAll(PDO::FETCH_ASSOC);
			} catch (PDOException $e) {
				echo "Erreur de requête SQL : " . $e->getMessage();
				exit;
			}

			// Affichage des offres de stage
			foreach ($users as $users) {
				echo "<tr>";
				echo "<td>" . $users["last_name"] . "</td>";
				echo "<td>" . $users["first_name"] . "</td>";
				echo "<td>" . $users["email"] . "</td>";
				echo "<td>" . $users["birth_date"] . "</td>";
				echo "<td>" . $users["phone_number"] . "</td>";
				echo "<td>" . $users["graduation_year"] . "</td>";
				echo "</tr>";
			}

			// Fermeture de la connexion à la base de données
			$pdo = null;
			?>
			</tbody>
		</table>
	</div>

	<style>
	/* Style pour la table */
table {
	font-family: Arial, sans-serif;
	border-collapse: collapse;
	width: 80%;
	border: 3px solid ;
	margin: 0 auto;
  }
  
  th, td {
	text-align: left;
	padding: 10px;
	border-bottom: 1px solid #ddd;
  }
  
  th {
	background-color: #4CAF50;
	color: white;
  }
  
  tr:hover {
	background-color: #f5f5f5;
	cursor: pointer;
  }
  
  /* Style pour l'animation de sélection */
  .selected {
	background-color: #FFA07A !important;
	animation-name: pulse;
	animation-duration: 0.5s;
	animation-iteration-count: infinite;
  }
  
  @keyframes pulse {
	0% {
	  transform: scale(1);
	}
	50% {
	  transform: scale(1.05);
	}
	100% {
	  transform: scale(1);
	}
  }
  
  /* Style pour le filtre de recherche */
  .filter {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-bottom: 20px;
  }
  
  .filter label {
	font-size: 16px;
	margin-right: 10px;
  }
  
  .filter select {
	font-size: 16px;
	padding: 5px;
	border: 1px solid #ddd;
	border-radius: 5px;
  }
  
  /* Style pour l'animation */
  @keyframes fadein {
	from { opacity: 0; }
	to { opacity: 1; }
  }
  
  .fade-in {
	animation-name: fadein;
	animation-duration: 0.5s;
  }
</style>


<script>



</script>







<!--
<script>
	function filter() {
	var annee = document.getElementById("annee").value;
	var city = document.getElementById("city_filter").value;
	var table = document.getElementById("users");
	var tr = table.getElementsByTagName("tr");
	for (var i = 1; i < tr.length; i++) {
		var annee_td = tr[i].getElementsByTagName("td")[1];
		var city_td = tr[i].getElementsByTagName("td")[2];
		if ((annee === "" || annee_td.textContent === annee) && (city === "" || city_td.textContent === city)) {
			tr[i].style.display = "";
		} else {
			tr[i].style.display = "none";
		}
	}
}
	</script>-->

</body>
</html>