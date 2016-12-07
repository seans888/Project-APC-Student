<?php
require_once 'employee_dd.php';
class employee_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'EMPLOYEE_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'employee_html';
    var $data_subclass = 'employee';
    var $result_page = 'reporter_result_employee.php';
    var $cancel_page = 'listview_employee.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_employee.php';

    function __construct()
    {
        $this->fields        = employee_dd::load_dictionary();
        $this->relations     = employee_dd::load_relationships();
        $this->subclasses    = employee_dd::load_subclass_info();
        $this->table_name    = employee_dd::$table_name;
        $this->tables        = employee_dd::$table_name;
        $this->readable_name = employee_dd::$readable_name;
        $this->get_report_fields();
    }
}
