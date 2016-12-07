<?php
require 'components/get_listview_referrer.php';

require 'subclasses/studentbridgeterm.php';
$dbh_studentbridgeterm = new studentbridgeterm;
$dbh_studentbridgeterm->set_where("");
if($result = $dbh_studentbridgeterm->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

