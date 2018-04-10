
<html>
<head>
  <?php echo file_get_contents('acc.css'); ?>

</head>
 
<body background="faculty.jpeg">


 <?php
 include_once 'databaseconnect.php';
session_start();
  if(!(isset($_SESSION['email']))){
header("location:index.php");

}
else
{
$name = $_SESSION['name'];
$email=$_SESSION['email'];

echo ' <div class="nav_bar_1">
    <a  class="active" style="font-size: 30px;" href="#home">Test your skill</a>
    <a class="active"href="#" style="float:right;"> Welcome '.$name.'</a></br>
     <a class="active"href="logout.php" style="float:right;">Logout</a>
     </div>

     <div class="nav_bar_2">
    <a href="acc.php?q=1">home</a>
    <a href="acc.php?q=3">history</a>
    <a href="">ranking</a>
</div>

</div>
<div class="nav_bar_bot">
    <span class="active">
    <a href="#home">About us</a>
    <a href="#contact">Contact Us</a>
    <a href="#about">feedback</a>
</div>
';

include_once 'databaseconnect.php';
//echo '<span class="pull-right top title1" ><span class="log1"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;Hello,</span> <a href="account.php?q=1" class="log log1">'.$name.'</a>&nbsp;|&nbsp;<a href="logout.php?q=account.php" class="log"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;Signout</button></a></span>';
}?>
</div>
</div></div>
<div class="bg">

<!--home closed-->
<?php if(@$_GET['q']==1) {
echo '<b>Your 2018 Spring Registered Classes</b></br>';
$result = mysqli_query($con,"SELECT * FROM course WHERE email= '$email'") or die('Error');
echo  '<div class="panel"><table class="table table-striped title1">
<tr><td><b>S.N.</b></td><td><b>Course</b></td><td></td></tr>';
$c=1;
while($row = mysqli_fetch_array($result)) {
	$first = $row['first'];
	$second = $row['second'];
	$third = $row['third'];
	echo '<tr><td>'.$c++.'</td><td><b><a href="acc.php?q=1" class="pull-right btn sub1" style="margin:0px;background:#99cc32"><span class="glyphicon glyphicon-new-window" aria-hidden="true"></span>&nbsp;<span class="title1"><b>'.$first.'</b></span></a></b></td></tr>';
	echo '<tr><td>'.$c++.'</td><td><b><a href="acc.php?q=1" class="pull-right btn sub1" style="margin:0px;background:#99cc32"><span class="glyphicon glyphicon-new-window" aria-hidden="true"></span>&nbsp;<span class="title1"><b>'.$second.'</b></span></a></b></td></tr>';
	echo '<tr><td>'.$c++.'</td><td><b><a href="acc.php?q=2" class="pull-right btn sub1" style="margin:0px;background:#99cc32"><span class="glyphicon glyphicon-new-window" aria-hidden="true"></span>&nbsp;<span class="title1"><b>'.$third.'</b></span></a></b></td></tr>';

}
$c=0;
echo '</table></div>';

}?>
<?php if(@$_GET['q']==2) {

$result = mysqli_query($con,"SELECT * FROM quiz ORDER BY date DESC") or die('Error');
echo  '<div class="panel"><table class="table table-striped title1">
<tr><td><b>S.N.</b></td><td><b>Topic</b></td><td><b>Total question</b></td><td><b>Marks</b></td><td><b>Time limit</b></td><td></td></tr>';
$c=1;
while($row = mysqli_fetch_array($result)) {
	$title = $row['title'];
	$total = $row['total'];
	$sahi = $row['sahi'];
    $time = $row['time'];
	$eid = $row['eid'];
$q12=mysqli_query($con,"SELECT score FROM history WHERE eid='$eid' AND email='$email'" )or die('Error98');
$rowcount=mysqli_num_rows($q12);	
if($rowcount == 0){
	echo '<tr><td>'.$c++.'</td><td>'.$title.'</td><td>'.$total.'</td><td>'.$sahi*$total.'</td><td>'.$time.'&nbsp;min</td>
	<td><b><a href="acc.php?q=quiz&step=2&eid='.$eid.'&n=1&t='.$total.'" class="pull-right btn sub1" style="margin:0px;background:#99cc32"><span class="glyphicon glyphicon-new-window" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Start</b></span></a></b></td></tr>';
}
else
{
echo '<tr style="color:#99cc32"><td>'.$c++.'</td><td>'.$title.'&nbsp;<span title="This quiz is already solve by you" class="glyphicon glyphicon-ok" aria-hidden="true"></span></td><td>'.$total.'</td><td>'.$sahi*$total.'</td><td>'.$time.'&nbsp;min</td>
	<td><b><a href="upd.php?q=quizre&step=25&eid='.$eid.'&n=1&t='.$total.'" class="pull-right btn sub1" style="margin:0px;background:red"><span class="glyphicon glyphicon-repeat" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Restart</b></span></a></b></td></tr>';
}
}
$c=0;
echo '</table></div>';

}?>


<!--home closed-->


<!--quiz start-->
<?php
if(@$_GET['q']== 'quiz' && @$_GET['step']== 2) {
echo'<script>
window.location.hash="no-back-button";
window.location.hash="Again-No-back-button";
window.onhashchange=function(){window.location.hash="no-back-button";}
</script> ';
$eid=@$_GET['eid'];
$sn=@$_GET['n'];
$total=@$_GET['t'];
$timeas=30;
echo '<span id="countdown" class="timer"></span>
<script>
var seconds = '.$timeas.';
    function secondPassed() {
    var minutes = Math.round((seconds - 30)/60);
    var remainingSeconds = seconds % 60;
    if (remainingSeconds < 10) {
        remainingSeconds = "0" + remainingSeconds; 
    }
    document.getElementById(\'countdown\').innerHTML = minutes + ":" +    remainingSeconds;
    if (seconds == 0) {
        clearInterval(countdownTimer);
        document.getElementById(\'countdown\').innerHTML = "Buzz Buzz";
        window.location.replace("acc.php?q=result&eid='.$eid.'")
    } else {    
        seconds--;
    }
    }
var countdownTimer = setInterval(\'secondPassed()\', 1000);

window.onload = function() {
     var minutes_data = getCookie("minutes");
     var seconds_data = getCookie("seconds");
     var timer_amount = (60*10); //default
      if (!minutes_data || !seconds_data){
        //no cookie found use default
      }
      else{
        timer_amount = parseInt(minutes_data*60)+parseInt(seconds_data)
      }

    var fiveMinutes = timer_amount,
        display = document.querySelector(\'#time\');
    startTimer(fiveMinutes, display); //`enter code here`
  };

   function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires="+d.toUTCString();
    document.cookie = cname + "=" + cvalue + "; " + expires;
   } 

   function getCookie(cname) {
   var name = cname + "=";
   var ca = document.cookie.split(\';\');
   for(var i=0; i<ca.length; i++) {
      var c = ca[i];
      while (c.charAt(0)==\' \') c = c.substring(1);
      if (c.indexOf(name) == 0) return c.substring(name.length,c.length);
   }
   return "";
  } 

</script>';
//<script language="JavaScript" src="https://scripts.hashemian.com/js/countdown.js"></script>';
$q=mysqli_query($con,"SELECT * FROM questions WHERE eid='$eid' AND sn='$sn' " );
echo '<div class="panel" style="margin:5%">';
while($row=mysqli_fetch_array($q) )
{
$qns=$row['qns'];
$qid=$row['qid'];
echo '<b>Question &nbsp;'.$sn.'&nbsp;::<br />'.$qns.'</b><br /><br />';
}
$q=mysqli_query($con,"SELECT * FROM options WHERE qid='$qid' " );
echo '<form action="upd.php?q=quiz&step=2&eid='.$eid.'&n='.$sn.'&t='.$total.'&qid='.$qid.'" method="POST"  class="form-horizontal">
<br />';

while($row=mysqli_fetch_array($q) )
{
$option=$row['option'];
$optionid=$row['optionid'];
echo'<input type="radio" name="ans" value="'.$optionid.'">'.$option.'<br /><br />';
}
echo'<br /><button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span>&nbsp;Submit</button></form></div>';
//header("location:dash.php?q=4&step=2&eid=$id&n=$total");
}
//result display
if(@$_GET['q']== 'result' && @$_GET['eid']) 
{
//$feed[]=$_SESSION["feed"];
//echo $feed[0];
$eid=@$_GET['eid'];
$q=mysqli_query($con,"SELECT * FROM history WHERE eid='$eid' AND email='$email' " )or die('Error157');
echo  '<div class="panel">
<center><h1 class="title" style="color:#660033">Result</h1><center><br /><table class="table table-striped title1" style="font-size:20px;font-weight:1000;">';

$row=mysqli_fetch_array($q);
if($row>0)
{
$s=$row['score'];
$w=$row['wrong'];
$r=$row['sahi'];
$qa=$row['level'];
echo '<tr style="color:#66CCFF"><td>Total Questions</td><td>'.$qa.'</td></tr>
      <tr style="color:#99cc32"><td>right Answer&nbsp;<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span></td><td>'.$r.'</td></tr> 
	  <tr style="color:red"><td>Wrong Answer&nbsp;<span class="glyphicon glyphicon-remove-circle" aria-hidden="true"></span></td><td>'.$w.'</td></tr>
	  <tr style="color:#66CCFF"><td>Score&nbsp;<span class="glyphicon glyphicon-star" aria-hidden="true"></span></td><td>'.$s.'</td></tr>';

$q=mysqli_query($con,"SELECT * FROM rank WHERE  email='$email' " )or die('Error157');
while($row=mysqli_fetch_array($q) )
{
$s=$row['score'];
echo '<tr style="color:#990000"><td>Overall Score&nbsp;<span class="glyphicon glyphicon-stats" aria-hidden="true"></span></td><td>'.$s.'</td></tr>';
}
echo '</table></div>';
//here code for feedback after exam
$eid=@$_GET['eid'];
$sn=1;
$total=@$_GET['t'];
$ah=1;
$dsan='No Response';
$q=mysqli_query($con,"SELECT * FROM questions WHERE eid='$eid'"); 
//$q=mysqli_query($con,"SELECT * FROM questions" );
echo '<div class="panel" style="margin:5%">';
while($row=mysqli_fetch_array($q) )
{
$qns=$row['qns'];
$qid=$row['qid'];
echo '<b>Question &nbsp;'.$sn.'&nbsp;::<br />'.$qns.'</b></br>';
//if(!($_SESSION['feed'][$ah])
//{ 
$sn++;
$op=0;
$d=$_SESSION['feed'][$ah];
$da=$_SESSION['feeda'][$ah];
$q1=mysqli_query($con,"SELECT * FROM options WHERE qid='$qid' " );
while($row1=mysqli_fetch_array($q1) )
{
$option=$row1['option'];
$optionid=$row1['optionid'];
if($d==$optionid)
{
$dsan=$option;
}
if($da==$optionid)
{
$ca=$option;
}
$op++;
echo ''.$op.')&nbsp;'.$option.'&nbsp;&nbsp;&nbsp;';
}
if($d!=$da)
{
echo '<br/><b>your answer is wrong</b>';
echo '<br/><b>your answer&nbsp;'.$dsan.'</b>';
echo '<br/><b>correct answer&nbsp;'.$ca.'</b>';
}
else
{
echo '<br/><b>your answer is correct</b>';
echo '<br/><b>your answer&nbsp;'.$dsan.'</b>';   
}
$ah++;
$dsan='No response';
echo '<br/><br/>';
}
}
else
{
    //echo '<tr style="color:#66CCFF"><td>Total Questions</td><td>'.$qa.'</td></tr>
      echo '<tr style="color:#99cc32"><td>right Answer&nbsp;<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span></td><td>0</td></tr> 
      <tr style="color:red"><td>Wrong Answer&nbsp;<span class="glyphicon glyphicon-remove-circle" aria-hidden="true"></span></td><td>0</td></tr>
      <tr style="color:#66CCFF"><td>Score&nbsp;<span class="glyphicon glyphicon-star" aria-hidden="true"></span></td><td>0</td></tr>';
}
unset($_SESSION['feed']);
}
?>

<!--quiz end-->
<?php
//history start
if(@$_GET['q']==3) 
{
$q=mysqli_query($con,"SELECT * FROM history WHERE email='$email' ORDER BY date DESC " )or die('Error197');
echo  '<div class="panel title">
<table class="table table-striped title1" >
<tr style="color:red"><td><b>S.N.</b></td><td><b>Quiz</b></td><td><b>Question Solved</b></td><td><b>Right</b></td><td><b>Wrong<b></td><td><b>Score</b></td>';
$c=0;
while($row=mysqli_fetch_array($q) )
{
$eid=$row['eid'];
$s=$row['score'];
$w=$row['wrong'];
$r=$row['sahi'];
$qa=$row['level'];
$q23=mysqli_query($con,"SELECT title FROM quiz WHERE  eid='$eid' " )or die('Error208');
while($row=mysqli_fetch_array($q23) )
{
$title=$row['title'];
}
$c++;
echo '<tr><td>'.$c.'</td><td>'.$title.'</td><td>'.$qa.'</td><td>'.$r.'</td><td>'.$w.'</td><td>'.$s.'</td></tr>';
}
echo'</table></div>';

}
?>
</body>
</html>
