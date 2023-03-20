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
		<div class="filter fade-in">
			<label for="domaine">Domaine :</label>
			<select id="domaine" onchange="updateTable()">
				<option value="">Tous</option>
				<option value="Informatique">Informatique</option>
				<option value="Marketing">Marketing</option>
				<option value="RH">RH</option>
			</select>
		</div>
		<table class="offres">
			<thead>
				<tr>
					<th>Entreprise</th>
					<th>Titre</th>
					<th>Description</th>
					<th>Domaine</th>
					<th>Durée</th>
					<th>Date de début</th>
				</tr>
			</thead>
			<tbody>
			<?php
			$dsn = "mysql:host=localhost:3306;dbname=myDB;charset=utf8mb4";
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
				$stmt = $pdo->prepare("SELECT * FROM offers");
				$stmt->execute();
				$offers = $stmt->fetchAll(PDO::FETCH_ASSOC);
			} catch (PDOException $e) {
				echo "Erreur de requête SQL : " . $e->getMessage();
				exit;
			}

			// Affichage des offres de stage
			foreach ($offers as $offer) {
				echo "<tr>";
				echo "<td>" . $offer["title"] . "</td>";
				echo "<td>" . $offer["domain"] . "</td>";
				echo "<td>" . $offer["city"] . "</td>";
				echo "<td>" . $offer["duration"] . "</td>";
				echo "<td>" . $offer["salary"] . "</td>";
				echo "<td>" . $offer["description"] . "</td>";
				echo "</tr>";
			}

			// Fermeture de la connexion à la base de données
			$dbh = null;
			?>
			</tbody>
		</table>
	</div>

	<style>
	/* Style pour la table */
table {
	font-family: Arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
	max-width: 800px;
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

  .offres tbody tr:hover {
	background-color: #f5f5f5;
	transition: background-color 0.3s ease-in-out;
  }
</style>


<script>
	function filter() {
	var domain = document.getElementById("domain_filter").value;
	var city = document.getElementById("city_filter").value;
	var table = document.getElementById("offers");
	var tr = table.getElementsByTagName("tr");
	for (var i = 1; i < tr.length; i++) {
		var domain_td = tr[i].getElementsByTagName("td")[1];
		var city_td = tr[i].getElementsByTagName("td")[2];
		if ((domain === "" || domain_td.textContent === domain) && (city === "" || city_td.textContent === city)) {
			tr[i].style.display = "";
		} else {
			tr[i].style.display = "none";
		}
	}
}

// Sélection de toutes les lignes de la table
const rows = document.querySelectorAll('.offres tbody tr');

// Ajout d'un gestionnaire d'événement sur chaque ligne
rows.forEach(row => {
  row.addEventListener('click', () => {
	// Si la ligne n'a pas déjà la classe "selected"
	if (!row.classList.contains('selected')) {
	  // Suppression de la classe "selected" de toutes les autres lignes
	  rows.forEach(otherRow => otherRow.classList.remove('selected'));

	  // Ajout de la classe "selected" à la ligne cliquée
	  row.classList.add('selected');
	} else {
	  // Si la ligne a déjà la classe "selected"
	  // Suppression de la classe "selected" de la ligne cliquée
	  row.classList.remove('selected');
	}
  });
});
	</script>


</body>
</html>