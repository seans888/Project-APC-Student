<?php
require_once 'employeebridgerecord_dd.php';
class employeebridgerecord_html extends html
{
    function __construct()
    {
        $this->fields        = employeebridgerecord_dd::load_dictionary();
        $this->relations     = employeebridgerecord_dd::load_relationships();
        $this->subclasses    = employeebridgerecord_dd::load_subclass_info();
        $this->table_name    = employeebridgerecord_dd::$table_name;
        $this->readable_name = employeebridgerecord_dd::$readable_name;
    }
}