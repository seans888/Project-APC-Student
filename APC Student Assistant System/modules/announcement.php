<?php
require_once 'path.php';
init_cobalt('ALLOW_ALL',FALSE);

$html = new html;
$html->draw_header('Announcements', $message, $message_type, FALSE);

$n = 1;
$var_value = '';
$con=mysqli_connect("localhost", "root", "", "apc");
$date = date('Y-m-d');
$results = mysqli_query($con ,'SELECT reserve_id as a, reserve_date as b, reserve_text as c, reserve_qty as d, department_name as e, status as f, employee_employee_id as g from `reserve` where status = "Pending" order by a desc' );

//$row  = mysqli_fetch_array($results);


$page_rows = 25;

$count = $results->num_rows;

$last = ceil($count/$page_rows);

if ($last < 1) {
	$last = 1;
}
$pagenum = 1;

if (isset($_GET['pn']))
{
	$pagenum = preg_replace('#[^0-9]#', '', $_GET['pn']);
}

if ($pagenum < 1) { 
    $pagenum = 1; 
} else if ($pagenum > $last) { 
    $pagenum = $last; 
}

$limit = 'LIMIT ' .($pagenum - 1) * $page_rows .',' .$page_rows;

$results = mysqli_query($con ,'SELECT reserve_id as a, reserve_date as b, reserve_text as c, reserve_qty as d, department_name as e, status as f, employee_employee_id as g from `reserve` where status = "Pending" order by a desc ' . $limit . '' );

$textline1 = "Announcements ($count)";
$textline2 = "Page $pagenum of $last";
$textline3 = "<font style='font-size:12px'>25 announcements per page(sorted from newest to oldest) </font>";
$paginationCtrls = '';

if($last != 1){
	
	if ($pagenum > 1) {
        $previous = $pagenum - 1;
		$paginationCtrls .= '<a href="'.$_SERVER['PHP_SELF'].'?pn='.$previous.'">Previous</a> &nbsp; &nbsp; ';

		for($i = $pagenum-4; $i < $pagenum; $i++){
			if($i > 0){
		        $paginationCtrls .= '<a href="'.$_SERVER['PHP_SELF'].'?pn='.$i.'">'.$i.'</a> &nbsp; ';
			}
	    }
    }

	$paginationCtrls .= ''.$pagenum.' &nbsp; ';

	for($i = $pagenum+1; $i <= $last; $i++){
		$paginationCtrls .= '<a href="'.$_SERVER['PHP_SELF'].'?pn='.$i.'">'.$i.'</a> &nbsp; ';
		if($i >= $pagenum+4){
			break;
		}
	}

    if ($pagenum != $last) {
        $next = $pagenum + 1;
        $paginationCtrls .= ' &nbsp; &nbsp; <a href="'.$_SERVER['PHP_SELF'].'?pn='.$next.'">Next</a> ';
    }
}
$list = '';

            echo '<div class="messageTip">';
            echo '<table border="0" width="100%">';
            echo '<tr><td width="60" valign="top">';
            echo '<img src="/' . BASE_DIRECTORY . '/images/' . $_SESSION['icon_set'] . '/tip.png">';
            echo '</td>';
            echo '<td>';
            echo "<center>" . $textline1 . "<br>";
			echo $textline2 . "<br>";
			echo $list . "<br>";
			echo $paginationCtrls;
			echo "<br> " . $textline3 . "</center><br>";
            echo '</td></tr></table></div>';

$myarray = [];
$p = 0;
while($row = $results->fetch_assoc()){
	
	//$con2=mysqli_connect("localhost", "root", "", "apc");
	$results2 = mysqli_query($con, 'SELECT emp_first_name as x, emp_middle_name , emp_last_name as y from `employee` where `employee`.emp_id = "'. $row["g"] .'"');
	$row2  = mysqli_fetch_array($results2);
$datevalue = new DateTime($row["b"]);
echo '<div class="container">'. "\r\n";
echo '<fieldset class="container_invisible">' . "\r\n";
echo '<fieldset class="top">' . $row["e"]. " assistant request for " . $datevalue->format('m/d/Y') . "\r\n";
        echo '</fieldset>' . "\r\n";
echo '<fieldset class="middle">'. "\r\n";
echo 
		"<table><tr>" .
		//"<td width='150px' height='30px'>Reservation ID </td><td>: </td><td>" .	$row["a"] . "</td></tr><tr>" .
	 	"<td width='150px' height='30px'>Date </td><td>: </td><td>" .  $datevalue->format('F j, Y') . "</td></tr><tr>" .
	 	"<td height='100px'>Description </td><td width='50px'>: </td><td>" .$row["c"] . "</td></tr><tr>" .
	 	"<td height='30px'>Assistants Needed </td><td>: </td><td>" .$row["d"] . "</td></tr><tr>" .
	 	"<td height='30px'>Department name </td><td>: </td><td>" .$row["e"] . "</td></tr><tr>" 
	 	//"<td height='30px'>Status </td><td>: </td><td>" .$row["f"] . "</td></tr><tr>"
	 	. "<td height='30px'>Contact Person</td><td>: </td><td>" . $row2['0'] . " " . $row2['1'] . " " . $row2['2'] ;
	 	echo "</td></tr><tr></table>";
echo '</fieldset>' . "\r\n";

  echo '<fieldset class="bottom">' . "\r\n";
  echo '<table width="100%" style="text-align:right"><tr><td>';

$myarray[$p] = $row["a"];
$var_value = $row["a"];

  echo '<form method="get" action="add_studentbridgereserve.php">
    <input type="hidden" name="" value="var_value">';
echo 'Reservation ID: ' . $myarray[$p];
   echo '<input type="submit" value="Reserve">';

      //$html->draw_button('SPECIAL','submit','btn_submit','Reserve',FALSE,0);
echo '</form>';



  echo '</td></tr></table>';
  echo '</fieldset>' . "\r\n";
    echo '</fieldset>' . "\r\n";
    echo '</div>'. "\r\n";

    $n++;
    $p++;
}

            echo '<div class="messageTip">';
            echo '<table border="0" width="100%">';
            echo '<tr><td width="60" valign="top">';
            echo '<img src="/' . BASE_DIRECTORY . '/images/' . $_SESSION['icon_set'] . '/tip.png">';
            echo '</td>';
            echo '<td>';
            echo "<center>" . $textline1 . "<br>";
			echo $textline2 . "<br>";
			echo $list . "<br>";
			echo $paginationCtrls;
			echo "<br>" . $textline3 . "</center><br>";
            echo '</td></tr></table></div>';
mysqli_close($con);

