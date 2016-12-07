<?php
require 'components/get_listview_referrer.php';

require 'subclasses/student.php';
$dbh_student = new student;
$dbh_student->set_where("Student_id='" . quote_smart($Student_id) . "'");
if($result = $dbh_student->make_query()->result)
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

