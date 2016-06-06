<html>
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
$id = intval($_POST['i']);
$fname = $_POST['f'];
$lname = $_POST['l'];

$sql = "SELECT * FROM mover WHERE moverID = ".$id.";";

$result = mysqli_query($conn, $sql);
if(mysqli_num_rows($result) > 0){
	echo "Error, ID ".$id." is already taken. Please choose another.";
}else{
	$sql2 = "INSERT INTO mover (moverID, lname, fname) VALUES (".$id.",'".$lname."', '".$fname."');";
	$result = mysqli_query($conn, $sql2);
	if($result){
		echo $fname." ".$lname." was added.";
	}
}
?>

</body>
</html>