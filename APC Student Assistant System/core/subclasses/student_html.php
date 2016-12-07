<?php
require_once 'student_dd.php';
class student_html extends html
{
    function __construct()
    {
        $this->fields        = student_dd::load_dictionary();
        $this->relations     = student_dd::load_relationships();
        $this->subclasses    = student_dd::load_subclass_info();
        $this->table_name    = student_dd::$table_name;
        $this->readable_name = student_dd::$readable_name;
    }
}
