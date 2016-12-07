<?php
require_once 'studentbridgeterm_dd.php';
class studentbridgeterm_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'STUDENTBRIDGETERM_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'studentbridgeterm_html';
    var $data_subclass = 'studentbridgeterm';
    var $result_page = 'reporter_result_studentbridgeterm.php';
    var $cancel_page = 'listview_studentbridgeterm.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_studentbridgeterm.php';

    function __construct()
    {
        $this->fields        = studentbridgeterm_dd::load_dictionary();
        $this->relations     = studentbridgeterm_dd::load_relationships();
        $this->subclasses    = studentbridgeterm_dd::load_subclass_info();
        $this->table_name    = studentbridgeterm_dd::$table_name;
        $this->tables        = studentbridgeterm_dd::$table_name;
        $this->readable_name = studentbridgeterm_dd::$readable_name;
        $this->get_report_fields();
    }
}
