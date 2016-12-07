<?php
require_once 'scholarship_dd.php';
class scholarship_html extends html
{
    function __construct()
    {
        $this->fields        = scholarship_dd::load_dictionary();
        $this->relations     = scholarship_dd::load_relationships();
        $this->subclasses    = scholarship_dd::load_subclass_info();
        $this->table_name    = scholarship_dd::$table_name;
        $this->readable_name = scholarship_dd::$readable_name;
    }
}
