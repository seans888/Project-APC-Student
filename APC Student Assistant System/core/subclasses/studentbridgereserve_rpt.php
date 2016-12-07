<?php
require_once 'studentbridgereserve_dd.php';
class studentbridgereserve_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'STUDENTBRIDGERESERVE_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'studentbridgereserve_html';
    var $data_subclass = 'studentbridgereserve';
    var $result_page = 'reporter_result_studentbridgereserve.php';
    var $cancel_page = 'listview_studentbridgereserve.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_studentbridgereserve.php';

    function __construct()
    {
        $this->fields        = studentbridgereserve_dd::load_dictionary();
        $this->relations     = studentbridgereserve_dd::load_relationships();
        $this->subclasses    = studentbridgereserve_dd::load_subclass_info();
        $this->table_name    = studentbridgereserve_dd::$table_name;
        $this->tables        = studentbridgereserve_dd::$table_name;
        $this->readable_name = studentbridgereserve_dd::$readable_name;
        $this->get_report_fields();
    }
}
