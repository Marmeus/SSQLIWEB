<?php
###########################################
#               DB CONFIG                 #
###########################################
$servername  = "localhost";
$db_name     = "vulndb";
$db_username = "web";
$db_password = "1234";

$conn = mysqli_connect("$servername", "$db_username", "$db_password","$db_name");
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>

<!DOCTYPE html>
    <head>
         <meta charset="utf-8">
        <title>Simple SQLi Web</title>
    </head>
<body>
<h1>User searcher</h1>
<table>
  <tr>
    <th>Username</th>
    <th>Email</th>
  </tr>
<?php
if (!empty($_REQUEST["id"])) {
    $id=$_REQUEST["id"];
    $sql = "SELECT id, username, email FROM users WHERE id=$id;";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
      // output data of each row
      echo "<tr>";
      while($row = $result->fetch_assoc()) {
        echo "<td>" .$row["username"]. "</td><td>" . $row["email"]. "</td>";
      }
      echo "</tr>";
    } 
}
?>
</table>
<br>
<form action='index.php' method='get' >
  <label for='id'>id:</label>
  <input type='text' id='id' name='id'><br><br>
  <input type='submit' value='Submit'>
</form>
</body>
</html>
