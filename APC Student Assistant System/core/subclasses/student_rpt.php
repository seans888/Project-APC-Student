<?php
require_once 'student_dd.php';
class student_rpt extends reporter
{
    var $tables='';
    var $session_array_name = 'STUDENT_REPORT_CUSTOM';
    var $report_title = '%%: Custom Reporting Tool';
    var $html_subclass = 'student_html';
    var $data_subclass = 'student';
    var $result_page = 'reporter_result_student.php';
    var $cancel_page = 'listview_student.php';
    var $pdf_reporter_filename = 'reporter_pdfresult_student.php';

    function __construct()
    {
        $this->fields        = student_dd::load_dictionary();
        $this->relations     = student_dd::load_relationships();
        $this->subclasses    = student_dd::load_subclass_info();
        $this->table_name    = student_dd::$table_name;
        $this->tables        = student_dd::$table_name;
        $this->readable_name = student_dd::$readable_name;
        $this->get_report_fields();
    }
}
