<?php
require_once 'studentbridgereserve_dd.php';
class studentbridgereserve_html extends html
{
    function __construct()
    {
        $this->fields        = studentbridgereserve_dd::load_dictionary();
        $this->relations     = studentbridgereserve_dd::load_relationships();
        $this->subclasses    = studentbridgereserve_dd::load_subclass_info();
        $this->table_name    = studentbridgereserve_dd::$table_name;
        $this->readable_name = studentbridgereserve_dd::$readable_name;
    }
}
