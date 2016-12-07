<?php
require 'components/get_listview_referrer.php';

require 'subclasses/record.php';
$dbh_record = new record;
$dbh_record->set_where("Record_id='" . quote_smart($Record_id) . "'");
if($result = $dbh_record->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$Record_date);
    if(count($data) == 3)
    {
        $Record_date_year = $data[0];
        $Record_date_month = $data[1];
        $Record_date_day = $data[2];
    }
    $data = explode('-',$Record_time_in);
    if(count($data) == 3)
    {
        $Record_time_in_year = $data[0];
        $Record_time_in_month = $data[1];
        $Record_time_in_day = $data[2];
    }
    $data = explode('-',$Record_time_out);
    if(count($data) == 3)
    {
        $Record_time_out_year = $data[0];
        $Record_time_out_month = $data[1];
        $Record_time_out_day = $data[2];
    }
}

