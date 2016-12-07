<?php
require_once 'scholarship_dd.php';
class scholarship_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'SCHOLARSHIP_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'scholarship_html';
    var $data_subclass = 'scholarship';
    var $result_page = 'reporter_result_scholarship.php';
    var $cancel_page = 'listview_scholarship.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_scholarship.php';

    function __construct()
    {
        $this->fields        = scholarship_dd::load_dictionary();
        $this->relations     = scholarship_dd::load_relationships();
        $this->subclasses    = scholarship_dd::load_subclass_info();
        $this->table_name    = scholarship_dd::$table_name;
        $this->tables        = scholarship_dd::$table_name;
        $this->readable_name = scholarship_dd::$readable_name;
        $this->get_report_fields();
    }
}
