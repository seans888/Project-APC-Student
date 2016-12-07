<?php
require_once 'path.php';
init_cobalt('ALLOW_ALL',FALSE);

$html = new html;
$html->draw_header('Assign Term', $message, $message_type, FALSE);

echo '<div class="container">'. "\r\n";
echo '<fieldset class="container_invisible">' . "\r\n";
echo '<fieldset class="top">' . " Term auto assignment module " . "\r\n";
   echo '</fieldset>' . "\r\n";
echo '<fieldset class="middle">'. "\r\n";

$con=mysqli_connect("localhost", "root", "", "apc");

$results2 = mysqli_query($con, 'SELECT term_id from `term`');
while ($row2 = $results2->fetch_assoc())
{
	$results = mysqli_query($con ,'SELECT student_id from `student`' );
while($row = $results->fetch_assoc())
{

	//echo $row['student_id'] . '<br>';
	
		$check = mysqli_query($con, 'SELECT COUNT(*) FROM `studentbridgeterm` where `term_term_id` = '.$row2['term_id'].' AND `Student_Student_id` = '.$row['student_id'].'');
		$row3 = mysqli_fetch_array($check);
		if ($row3[0]==0)
			mysqli_query($con, 'INSERT INTO `studentbridgeterm` (`Term_Term_id`, `Student_Student_id`) VALUES ('.$row2['term_id'].','.$row['student_id'].')');
}
}
echo 'Students have been automatically assigned terms created in the database. <br>';


  echo '</fieldset>' . "\r\n";
echo '<fieldset class="bottom">' . "\r\n";
echo '<table width="100%" style="text-align:right"><tr><td>';
echo '<font style="font-size:12px">you will be redirected to the main screen in 5s...</font>';
 echo '</td></tr></table>';
  echo '</fieldset>' . "\r\n";
  echo '</div>'. "\r\n";
 header( "refresh:5;url=..\main.php" );
 mysqli_close($con);