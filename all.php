<!DOCTYPE html>
<html>
<head>
<title>Customer Details</title>
<link rel="icon" href="./img/icon.png" type="image/gif" sizes="16x16">
<link rel="stylesheet" href="./css/style.css" id="theme-color">
<link rel="stylesheet" href="./css/tables.css">
</head>

<body>
<div class="topcorner"><a href="index.html"><img src="./img/home.png"></a></div>
<div class="col-md-8 col-sm-10 col-12 mx-auto my-auto text-center">
<h1 class="heading-black text-capitalize"> BENEFICIARIES</h1>
</div>

<table class="styled-table">
<thead>
<tr>
<th>ID</th>
<th>USERNAME</th>
<th>EMAIL</th>
<th>BALANCE</th>
<th>PAY NOW</th>
</tr>
</thead>
<tbody>
<?php
include 'db_conn.php';

$sql = "SELECT id,name,email,balance FROM customers";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
// output data of each row
while($row = $result->fetch_assoc()) {
echo "<tr><td>" . $row["id"]. "</td><td>" . $row["name"] . "</td><td>" . $row["email"] . "</td><td>₹ "
. $row["balance"]. "</td>";
?>
<td>
<a href="transact.php?id=<?php echo $row['id'] ;?>"> 
<button class="btn btn-primary d-inline-flex flex-row align-items-center">Make a Payment </button> </a>
</td>
<?php
}
"</tr>";
echo "</table>";
} else { echo "0 results"; }
$conn->close();
?>
</tbody>
</table>
</body>
</html>
