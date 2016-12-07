<?php
require_once 'record_dd.php';
class record_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'RECORD_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'record_html';
    var $data_subclass = 'record';
    var $result_page = 'reporter_result_record.php';
    var $cancel_page = 'listview_record.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_record.php';

    function __construct()
    {
        $this->fields        = record_dd::load_dictionary();
        $this->relations     = record_dd::load_relationships();
        $this->subclasses    = record_dd::load_subclass_info();
        $this->table_name    = record_dd::$table_name;
        $this->tables        = record_dd::$table_name;
        $this->readable_name = record_dd::$readable_name;
        $this->get_report_fields();
    }
}
