<?php
//****************************************************************************************
//Generated by Cobalt, a rapid application development framework. http://cobalt.jvroig.com
//Cobalt developed by JV Roig (jvroig@jvroig.com)
//****************************************************************************************
require 'path.php';
init_cobalt('Delete reserve');

if(isset($_GET['Reserve_id']))
{
    $Reserve_id = urldecode($_GET['Reserve_id']);
    require_once 'form_data_reserve.php';
}

if(xsrf_guard())
{
    init_var($_POST['btn_cancel']);
    init_var($_POST['btn_delete']);
    require 'components/query_string_standard.php';

    if($_POST['btn_cancel'])
    {
        log_action('Pressed cancel button');
        redirect("listview_reserve.php?$query_string");
    }

    elseif($_POST['btn_delete'])
    {
        log_action('Pressed delete button');
        require_once 'subclasses/reserve.php';
        $dbh_reserve = new reserve;

        $object_name = 'dbh_reserve';
        require 'components/create_form_data.php';


        $dbh_reserve->delete($arr_form_data);

        redirect("listview_reserve.php?$query_string");
    }
}
require 'subclasses/reserve_html.php';
$html = new reserve_html;
$html->draw_header('Delete %%', $message, $message_type);
$html->draw_listview_referrer_info($filter_field_used, $filter_used, $page_from, $filter_sort_asc, $filter_sort_desc);

$html->draw_hidden('Reserve_id');

$html->detail_view = TRUE;
$html->draw_controls('delete');

$html->draw_footer();