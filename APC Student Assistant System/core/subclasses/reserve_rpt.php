<?php
require_once 'reserve_dd.php';
class reserve_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'RESERVE_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'reserve_html';
    var $data_subclass = 'reserve';
    var $result_page = 'reporter_result_reserve.php';
    var $cancel_page = 'listview_reserve.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_reserve.php';

    function __construct()
    {
        $this->fields        = reserve_dd::load_dictionary();
        $this->relations     = reserve_dd::load_relationships();
        $this->subclasses    = reserve_dd::load_subclass_info();
        $this->table_name    = reserve_dd::$table_name;
        $this->tables        = reserve_dd::$table_name;
        $this->readable_name = reserve_dd::$readable_name;
        $this->get_report_fields();
    }
}
