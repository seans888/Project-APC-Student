<?php
require_once 'documentation_class.php';
require_once 'student_dd.php';
class student_doc extends documentation
{
    function __construct()
    {
        $this->fields        = student_dd::load_dictionary();
        $this->relations     = student_dd::load_relationships();
        $this->subclasses    = student_dd::load_subclass_info();
        $this->table_name    = student_dd::$table_name;
        $this->readable_name = student_dd::$readable_name;
        parent::__construct();
    }
}
