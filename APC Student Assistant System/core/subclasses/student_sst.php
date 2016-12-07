<?php
require_once 'sst_class.php';
require_once 'student_dd.php';
class student_sst extends sst
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
