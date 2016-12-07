<?php
require 'components/get_listview_referrer.php';

require 'subclasses/scholarship.php';
$dbh_scholarship = new scholarship;
$dbh_scholarship->set_where("Scholarship_id='" . quote_smart($Scholarship_id) . "'");
if($result = $dbh_scholarship->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

}

