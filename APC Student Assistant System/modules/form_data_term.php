<?php
require 'components/get_listview_referrer.php';

require 'subclasses/term.php';
$dbh_term = new term;
$dbh_term->set_where("Term_id='" . quote_smart($Term_id) . "'");
if($result = $dbh_term->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$Term_start);
    if(count($data) == 3)
    {
        $Term_start_year = $data[0];
        $Term_start_month = $data[1];
        $Term_start_day = $data[2];
    }
    $data = explode('-',$Term_end);
    if(count($data) == 3)
    {
        $Term_end_year = $data[0];
        $Term_end_month = $data[1];
        $Term_end_day = $data[2];
    }
}

