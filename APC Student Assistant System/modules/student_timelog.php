
<?php 
require_once 'path.php';
init_cobalt('ALLOW_ALL',FALSE);

$html = new html;
$html->draw_header('Welcome to your LOGVIEWER', $message, $message_type, FALSE);

$con=mysqli_connect("localhost", "root", "", "apc");
$results = mysqli_query($con ,'select t.id_number from (select username ,student_id as id_number from `user` a, `person` b, `student` c where a.person_id = b.person_id and (last_name = student_last_name) and (first_name = student_first_name) and (middle_name = student_middle_name) union select username, emp_id as id_number from `user` a, `person` b, `employee` c where a.person_id = b.person_id and (last_name = emp_last_name) and (first_name = emp_first_name) and (middle_name = emp_middle_name)) as t where t.username = "'. $_SESSION['user'] .'"');
$row  = mysqli_fetch_array($results);
echo $row['0'];
mysqli_close($con);


