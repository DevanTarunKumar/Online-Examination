<?php
include_once 'databaseconnect.php';
session_start();
$email=$_SESSION['email'];

//quiz start
if(@$_GET['q']== 'quiz' && @$_GET['step']== 2) {
$eid=@$_GET['eid'];
$sn=@$_GET['n'];
$total=@$_GET['t'];
$ans=$_POST['ans'];
$qid=@$_GET['qid'];
$_SESSION["feed"][$sn] =$ans ;
$q=mysqli_query($con,"SELECT * FROM answer WHERE qid='$qid'" );
while($row=mysqli_fetch_array($q) )
{
$ansid=$row['ansid'];
$_SESSION["feeda"][$sn]=$ansid;
}
if($ans == $ansid)
{

$q=mysqli_query($con,"SELECT * FROM quiz WHERE eid='$eid' " );
while($row=mysqli_fetch_array($q) )
{
$sahi=$row['sahi'];
}
if($sn == 1)
{
$q=mysqli_query($con,"INSERT INTO history VALUES('$email','$eid' ,'0','0','0','0',NOW())")or die('Error');
}
$q=mysqli_query($con,"SELECT * FROM history WHERE eid='$eid' AND email='$email' ")or die('Error115');

while($row=mysqli_fetch_array($q) )
{
$s=$row['score'];
$r=$row['sahi'];
}
$r++;
$s=$s+$sahi;
$q=mysqli_query($con,"UPDATE `history` SET `score`=$s,`level`=$sn,`sahi`=$r, date= NOW()  WHERE  email = '$email' AND eid = '$eid'")or die('Error124');

} 
else
{
$q=mysqli_query($con,"SELECT * FROM quiz WHERE eid='$eid' " )or die('Error129');

while($row=mysqli_fetch_array($q) )
{
$wrong=$row['wrong'];
}
if($sn == 1)
{
$q=mysqli_query($con,"INSERT INTO history VALUES('$email','$eid' ,'0','0','0','0',NOW() )")or die('Error137');
}
$q=mysqli_query($con,"SELECT * FROM history WHERE eid='$eid' AND email='$email' " )or die('Error139');
while($row=mysqli_fetch_array($q) )
{
$s=$row['score'];
$w=$row['wrong'];
}
$w++;
$s=$s-$wrong;
$q=mysqli_query($con,"UPDATE `history` SET `score`=$s,`level`=$sn,`wrong`=$w, date=NOW() WHERE  email = '$email' AND eid = '$eid'")or die('Error147');
}
if($sn != $total)
{
$sn++;
header("location:acc.php?q=quiz&step=2&eid=$eid&n=$sn&t=$total")or die('Error152');
}
else if( $_SESSION['key']!='sunny7785068889')
{
$q=mysqli_query($con,"SELECT score FROM history WHERE eid='$eid' AND email='$email'" )or die('Error156');
while($row=mysqli_fetch_array($q) )
{
$s=$row['score'];
}
$q=mysqli_query($con,"SELECT * FROM rank WHERE email='$email'" )or die('Error161');
$rowcount=mysqli_num_rows($q);
if($rowcount == 0)
{
$q2=mysqli_query($con,"INSERT INTO rank VALUES('$email','$s',NOW())")or die('Error165');
}
else
{
while($row=mysqli_fetch_array($q) )
{
$sun=$row['score'];
}
$sun=$s+$sun;
$q=mysqli_query($con,"UPDATE `rank` SET `score`=$sun ,time=NOW() WHERE email= '$email'")or die('Error174');
}
header("location:acc.php?q=result&eid=$eid");
}
else
{
header("location:acc.php?q=result&eid=$eid");
}
}

//restart quiz
if(@$_GET['q']== 'quizre' && @$_GET['step']== 25 ) {
$eid=@$_GET['eid'];
$n=@$_GET['n'];
$t=@$_GET['t'];
$q=mysqli_query($con,"SELECT score FROM history WHERE eid='$eid' AND email='$email'" )or die('Error156');
while($row=mysqli_fetch_array($q) )
{
$s=$row['score'];
}
$q=mysqli_query($con,"DELETE FROM `history` WHERE eid='$eid' AND email='$email' " )or die('Error184');
$q=mysqli_query($con,"SELECT * FROM rank WHERE email='$email'" )or die('Error161');
while($row=mysqli_fetch_array($q) )
{
$sun=$row['score'];
}
$sun=$sun-$s;
$q=mysqli_query($con,"UPDATE `rank` SET `score`=$sun ,time=NOW() WHERE email= '$email'")or die('Error174');
header("location:acc.php?q=quiz&step=2&eid=$eid&n=1&t=$t");
}

if(@$_GET['q']== 'addqns') {
$n=@$_GET['n'];
$eid=@$_GET['eid'];
$ch=@$_GET['ch'];
$q=mysqli_query($con,"SELECT * FROM quiz WHERE eid='$eid'" )or die('Error161');
while($row=mysqli_fetch_array($q) )
{
$sun=$row['title'];
}
echo ''.$sun.'';
$sun = preg_replace('/\s+/', '', $sun);
echo ''.$sun.'';
$sun=strtolower($sun);
echo ''.$sun.'';
for($i=1;$i<=$n;$i++)
 {
 $qid=uniqid();
 $qns=$_POST['qns'.$i];
$q3=mysqli_query($con,"INSERT INTO questions VALUES  ('$eid','$qid','$qns' , '$ch' , '$i')") or die('Error60');
  $oaid=uniqid();
  $obid=uniqid();
$ocid=uniqid();
$odid=uniqid();
$a=$_POST[$i.'1'];
$b=$_POST[$i.'2'];
$c=$_POST[$i.'3'];
$d=$_POST[$i.'4'];
$qa=mysqli_query($con,"INSERT INTO options VALUES  ('$qid','$a','$oaid')") or die('Error61');
$qb=mysqli_query($con,"INSERT INTO options VALUES  ('$qid','$b','$obid')") or die('Error62');
$qc=mysqli_query($con,"INSERT INTO options VALUES  ('$qid','$c','$ocid')") or die('Error63');
$qd=mysqli_query($con,"INSERT INTO options VALUES  ('$qid','$d','$odid')") or die('Error64');
$e=$_POST['ans'.$i];
switch($e)
{
case 'a':
$ansid=$oaid;
break;
case 'b':
$ansid=$obid;
break;
case 'c':
$ansid=$ocid;
break;
case 'd':
$ansid=$odid;
break;
default:
$ansid=$oaid;
}


$qans=mysqli_query($con,"INSERT INTO answer VALUES  ('$qid','$ansid')");

 }
header("location:profacc.php?q=2");
}
if(@$_GET['q']== 'updqns') {
$n=@$_GET['n'];
$eid=@$_GET['eid'];
$ch=@$_GET['ch'];
$qid12=@$_GET['qid'];
$total=@$_GET['t'];
/*$qid=uniqid();
 $qns=$_POST['qns'.[1]];
echo '<b>reached</br>'.$eid.'</br>'.$qid.'</br>'.$qns.'</br></b>';
//$q=mysqli_query($con,"SELECT * FROM quiz WHERE eid='$eid'" )or die('Error161');
/*while($row=mysqli_fetch_array($q) )
{
$sun=$row['title'];
}
echo ''.$sun.'';
$sun = preg_replace('/\s+/', '', $sun);
echo ''.$sun.'';
$sun=strtolower($sun);
echo ''.$sun.'';*/
for($i=1;$i<=$n;$i++)
 {
 	$qid=uniqid();
 $qns=$_POST['qns'.$i];
 
//$q3=mysqli_query($con,"INSERT INTO $sun VALUES  ('$eid','$qid','$qns' , '$ch' , '$i')") or die('Error60');
  //$q3=mysqli_query($con,"UPDATE questions SET qns='$qns' WHERE eid='$eid' and qid='$qid'") or die('Error60');
 $q3=mysqli_query($con,"UPDATE questions SET eid='$eid', qns='$qns', choice=4, sn=1 WHERE qid='$qid12'") or die('Error60');
$oaid=uniqid();
$obid=uniqid();
$ocid=uniqid();
$odid=uniqid();
$a=$_POST[$i.'1'];
$b=$_POST[$i.'2'];
$c=$_POST[$i.'3'];
$d=$_POST[$i.'4'];
$qa=mysqli_query($con,"UPDATE options SET option = '$a', optionid = '$oaid' where qid ='$qid12'") or die('Error61');
$qb=mysqli_query($con,"UPDATE options SET option = '$b', optionid = '$obid' where qid ='$qid12'") or die('Error62');
$qc=mysqli_query($con,"UPDATE options SET option = '$c', optionid = '$ocid' where qid ='$qid12'") or die('Error63');
$qd=mysqli_query($con,"UPDATE options SET option = '$d', optionid = '$odid' where qid ='$qid12'") or die('Error64');
$e=$_POST['ans'.$i];
//echo '<b>reached</br>'.$eid.'</br>'.$qid12.'</br>'.$qns.'</br>'.$e.'</br>'.$a.'</br>'.$b.'</br>'.$c.'</br>'.$d.'</b>';
switch($e)
{
case 'a':
$ansid=$oaid;
break;
case 'b':
$ansid=$obid;
break;
case 'c':
$ansid=$ocid;
break;
case 'd':
$ansid=$odid;
break;
default:
$ansid=$oaid;
}
$qans=mysqli_query($con,"UPDATE answer SET ansid = '$ansid' where qid ='$qid12'");
 }
header("profacc.php?q=edit&step=2&eid='$eid'&n=1&t='$total'");
}

if(@$_GET['q']== 'addquiz') {
$name = $_POST['name'];
$name= ucwords(strtolower($name));
$total = $_POST['total'];
$sahi = $_POST['right'];
$wrong = $_POST['wrong'];
$time = $_POST['time'];
$tag = $_POST['tag'];
$desc = $_POST['desc'];
$id=uniqid();
$q3=mysqli_query($con,"INSERT INTO quiz VALUES  ('$id','$name' , '$sahi' , '$wrong','$total','$time' ,'$desc','$tag', NOW())");

header("location:profacc.php?q=4&step=2&eid=$id&n=$total");
}

?>



