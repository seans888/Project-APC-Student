<?php
require_once 'documentation_class.php';
require_once 'record_dd.php';
class record_doc extends documentation
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
