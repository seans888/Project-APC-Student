<?php
require 'components/get_listview_referrer.php';

require 'subclasses/employeebridgerecord.php';
$dbh_employeebridgerecord = new employeebridgerecord;
$dbh_employeebridgerecord->set_where("");
if($result = $dbh_employeebridgerecord->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

