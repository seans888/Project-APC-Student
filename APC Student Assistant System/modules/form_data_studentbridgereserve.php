<?php
require 'components/get_listview_referrer.php';

require 'subclasses/studentbridgereserve.php';
$dbh_studentbridgereserve = new studentbridgereserve;
$dbh_studentbridgereserve->set_where("");
if($result = $dbh_studentbridgereserve->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

