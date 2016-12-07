<?php
require 'components/get_listview_referrer.php';

require 'subclasses/employee.php';
$dbh_employee = new employee;
$dbh_employee->set_where("Emp_id='" . quote_smart($Emp_id) . "'");
if($result = $dbh_employee->make_query()->result)
{
    $data = $result->fetch_assoc();
    extract($data);

    $data = explode('-',$Birth_date);
    if(count($data) == 3)
    {
        $Birth_date_year = $data[0];
        $Birth_date_month = $data[1];
        $Birth_date_day = $data[2];
    }
}

