<?php
require_once 'sst_class.php';
require_once 'record_dd.php';
class record_sst extends sst
{
    function __construct()
    {
        $this->fields        = record_dd::load_dictionary();
        $this->relations     = record_dd::load_relationships();
        $this->subclasses    = record_dd::load_subclass_info();
        $this->table_name    = record_dd::$table_name;
        $this->readable_name = record_dd::$readable_name;
        parent::__construct();
    }
}
