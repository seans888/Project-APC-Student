<?php
require_once 'documentation_class.php';
require_once 'studentbridgeterm_dd.php';
class studentbridgeterm_doc extends documentation
{
    function __construct()
    {
        $this->fields        = studentbridgeterm_dd::load_dictionary();
        $this->relations     = studentbridgeterm_dd::load_relationships();
        $this->subclasses    = studentbridgeterm_dd::load_subclass_info();
        $this->table_name    = studentbridgeterm_dd::$table_name;
        $this->readable_name = studentbridgeterm_dd::$readable_name;
        parent::__construct();
    }
}
