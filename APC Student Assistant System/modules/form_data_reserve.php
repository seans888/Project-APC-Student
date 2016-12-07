<?php
require 'components/get_listview_referrer.php';

require 'subclasses/reserve.php';
$dbh_reserve = new reserve;
$dbh_reserve->set_where("Reserve_id='" . quote_smart($Reserve_id) . "'");
if($result = $dbh_reserve->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$Reserve_date);
    if(count($data) == 3)
    {
        $Reserve_date_year = $data[0];
        $Reserve_date_month = $data[1];
        $Reserve_date_day = $data[2];
    }
}

