<?php
session_start();
if(isset($_SESSION["email"])){
session_destroy();
}
include_once 'databaseconnect.php';
$ref=@$_GET['q'];
$email = $_POST['email'];
$password = $_POST['password'];
$select=$_POST['select'];
$email = stripslashes($email);
$email = addslashes($email);
$password = stripslashes($password); 
$password = addslashes($password);
$password=md5($password);
if($select=='Student')
{
$result = mysqli_query($con,"SELECT name FROM user WHERE email = '$email' and password = '$password'") or die('Error');
$count=mysqli_num_rows($result);
if($count==1){
while($row = mysqli_fetch_array($result)) {
	$name = $row['name'];
}
$_SESSION["name"] = $name;
$_SESSION["email"] = $email;
header("location:acc.php?q=1");
}
else
{
header("location:$ref?w=Wrong Username or Password");
}
}
else
{
$result = mysqli_query($con,"SELECT name FROM professor WHERE email = '$email' and password = '$password'") or die('Error');
$count=mysqli_num_rows($result);
if($count==1){
while($row = mysqli_fetch_array($result)) {
	$name = $row['name'];
}
$_SESSION["name"] = $name;
$_SESSION["email"] = $email;
header("location:profacc.php?q=1");
}
else
{
header("location:$ref?w=Wrong Username or Password");
}
}
?>