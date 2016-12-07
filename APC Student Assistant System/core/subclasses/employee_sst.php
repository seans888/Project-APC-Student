<?php
require_once 'sst_class.php';
require_once 'employee_dd.php';
class employee_sst extends sst
{
    function __construct()
    {
        $this->fields        = employee_dd::load_dictionary();
        $this->relations     = employee_dd::load_relationships();
        $this->subclasses    = employee_dd::load_subclass_info();
        $this->table_name    = employee_dd::$table_name;
        $this->readable_name = employee_dd::$readable_name;
        parent::__construct();
    }
}
