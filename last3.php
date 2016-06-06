<!DOCTYPE html>
<html>
<head>
<style>
table{
	border-collapse: collapse;
}
td, th{
	padding: 15px;
}
th{
	background-color: #4CAF50;
	color: white;
}
tr:hover{
	background-color: #f5f5f5;
}
table, td, th{
	border-bottom: 1px solid #dddddd;
	vertical-align: top;
}
</style>
</head>
<body>

<?php
$servername = "localhost";
$username = "guest";
$password = "password";
$dbname = "movingcompany";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
$sql = "SELECT truckID, moveDate, lname, fname from moves 
LEFT JOIN (crews LEFT JOIN mover ON crews.moverID = mover.moverID) ON moves.crewID = crews.crewID
ORDER BY moveDate DESC;";


$result = mysqli_query($conn, $sql);

if(mysqli_num_rows($result) > 0){
	echo "<table><tr><th>Truck</th><th>Move Date</th><th>Movers</th></tr>";
	
	if($row = mysqli_fetch_assoc($result)){
		$num_trucks = 1;
		$truck = $row["truckID"];
		$date = $row["moveDate"];
		echo "<tr><td>".$truck."</td><td>".$date."</td><td>".$row["fname"]." ".$row["lname"]."<br>";
		while($row = mysqli_fetch_assoc($result) and $num_trucks< 4) {
			if($truck == $row["truckID"] and $date == $row["moveDate"]){
				echo $row["fname"]." ".$row["lname"]."<br>";
			}else{
				echo "</td></tr>";
				$truck = $row["truckID"];
				$date = $row["moveDate"];
				$num_trucks++;
				if($num_trucks < 4){
					echo "<tr><td>".$truck."</td><td>".$date."</td><td>".$row["fname"]." ".$row["lname"]."<br>";
				}
			}
		}
		echo "</td></tr></table>";
	}
	
}else{
	echo "No data to display.";
}
?>
</body>
</html>