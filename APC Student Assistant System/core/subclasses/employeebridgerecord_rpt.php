<?php
require_once 'employeebridgerecord_dd.php';
class employeebridgerecord_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'EMPLOYEEBRIDGERECORD_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'employeebridgerecord_html';
    var $data_subclass = 'employeebridgerecord';
    var $result_page = 'reporter_result_employeebridgerecord.php';
    var $cancel_page = 'listview_employeebridgerecord.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_employeebridgerecord.php';

    function __construct()
    {
        $this->fields        = employeebridgerecord_dd::load_dictionary();
        $this->relations     = employeebridgerecord_dd::load_relationships();
        $this->subclasses    = employeebridgerecord_dd::load_subclass_info();
        $this->table_name    = employeebridgerecord_dd::$table_name;
        $this->tables        = employeebridgerecord_dd::$table_name;
        $this->readable_name = employeebridgerecord_dd::$readable_name;
        $this->get_report_fields();
    }
}
