
<html >
<head>

<?php echo file_get_contents('index.css'); 
session_start();
if(isset($_SESSION["email"])){
header("location:acc.php?q=1");
}?>
<?php if(@$_GET['w'])
{echo'<script>alert("'.@$_GET['w'].'");</script>';}
?>
<script>
function validateForm() {var y = document.forms["form"]["name"].value;	var letters = /^[A-Za-z]+$/;if (y == null || y == "") {alert("Name must be filled out.");return false;}var z =document.forms["form"]["college"].value;if (z == null || z == "") {alert("college must be filled out.");return false;}var x = document.forms["form"]["email"].value;var atpos = x.indexOf("@");
var dotpos = x.lastIndexOf(".");if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {alert("Not a valid e-mail address.");return false;}var a = document.forms["form"]["password"].value;if(a == null || a == ""){alert("Password must be filled out");return false;}if(a.length<5 || a.length>25){alert("Passwords must be 5 to 25 characters long.");return false;}
var b = document.forms["form"]["cpassword"].value;if (a!=b){alert("Passwords must match.");return false;}}
</script>
</head>

<body background="ESSA-background.jpg">
  

<!--sign in modal start-->
<div id ="text-position">
        <form action="login.php?q=index.php" method="POST">

 <font size="5" color="maroon" face="Comic Sans MS"> User Type:
<select style="font-size:12pt;
margin: 8px 0;
border-radius: 4px;
box-sizing: border-box;
color:maroon;
text-align:center;
width:150;">
    <option value="Student" >Student</option>
    <option value="Facutly">Faculty</option>

</select>
       <br><br>
<!-- Text input-->
  <i>UserId:</i><input id="email" name="email" placeholder="Enter your email-id" type="email">
    
<br><br>

<!-- Password input-->

   Password: <input id="password" name="password" placeholder="Enter your Password" type="password">
   <br><br>
    
        <button type="submit">Log in</button>
		</fieldset>
</form>
      </div>
<!-- sign in form begins --> 
 <?php
//session_start();
/*if(isset($_SESSION["email"])){
session_destroy();
}*/
/*include_once 'databaseconnect.php';
$_SESSION["name"] = 'devan';
$_SESSION["email"] = 'tarundevan@gmail.com';
echo '<a href="profacc.php?q=1" class="pull-right btn sub1" style="margin:0px;background:#99cc32"><span class="glyphicon glyphicon-new-window" aria-hidden="true"></span>&nbsp;<span class="title1"><b>prof</b></span></a></b></br>';
echo '<a href="logout.php" class="pull-right btn sub1" style="margin:0px;background:#99cc32"><span class="glyphicon glyphicon-new-window" aria-hidden="true"></span>&nbsp;<span class="title1"><b>clear session</b></span></a></b>';*/
?>
 
 
</body>
</html>
