<?php
require_once 'sst_class.php';
require_once 'reserve_dd.php';
class reserve_sst extends sst
{
    function __construct()
    {
        $this->fields        = reserve_dd::load_dictionary();
        $this->relations     = reserve_dd::load_relationships();
        $this->subclasses    = reserve_dd::load_subclass_info();
        $this->table_name    = reserve_dd::$table_name;
        $this->readable_name = reserve_dd::$readable_name;
        parent::__construct();
    }
}
