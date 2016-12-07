<?php
require_once 'employee_dd.php';
class employee extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = employee_dd::load_dictionary();
        $this->relations  = employee_dd::load_relationships();
        $this->subclasses = employee_dd::load_subclass_info();
        $this->table_name = employee_dd::$table_name;
        $this->tables     = employee_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('Emp_id, Emp_last_name, Emp_first_name, Emp_middle_name, Email, Address, Postal_code, Tel_num, Mobile_num, Department_name, Gender, Civil_status, Birth_date, Birth_place, Religion, TIN_num');
            $this->set_values("?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?");

            $bind_params = array('isssssiissssssss',
                                 &$this->fields['Emp_id']['value'],
                                 &$this->fields['Emp_last_name']['value'],
                                 &$this->fields['Emp_first_name']['value'],
                                 &$this->fields['Emp_middle_name']['value'],
                                 &$this->fields['Email']['value'],
                                 &$this->fields['Address']['value'],
                                 &$this->fields['Postal_code']['value'],
                                 &$this->fields['Tel_num']['value'],
                                 &$this->fields['Mobile_num']['value'],
                                 &$this->fields['Department_name']['value'],
                                 &$this->fields['Gender']['value'],
                                 &$this->fields['Civil_status']['value'],
                                 &$this->fields['Birth_date']['value'],
                                 &$this->fields['Birth_place']['value'],
                                 &$this->fields['Religion']['value'],
                                 &$this->fields['TIN_num']['value']);

            $this->stmt_prepare($bind_params);
        }

        $this->stmt_execute();
        return $this;
    }

    function edit($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('UPDATE');
            $this->set_update("Emp_id = ?, Emp_last_name = ?, Emp_first_name = ?, Emp_middle_name = ?, Email = ?, Address = ?, Postal_code = ?, Tel_num = ?, Mobile_num = ?, Department_name = ?, Gender = ?, Civil_status = ?, Birth_date = ?, Birth_place = ?, Religion = ?, TIN_num = ?");
            $this->set_where("Emp_id = ?");

            $bind_params = array('isssssiissssssssi',
                                 &$this->fields['Emp_id']['value'],
                                 &$this->fields['Emp_last_name']['value'],
                                 &$this->fields['Emp_first_name']['value'],
                                 &$this->fields['Emp_middle_name']['value'],
                                 &$this->fields['Email']['value'],
                                 &$this->fields['Address']['value'],
                                 &$this->fields['Postal_code']['value'],
                                 &$this->fields['Tel_num']['value'],
                                 &$this->fields['Mobile_num']['value'],
                                 &$this->fields['Department_name']['value'],
                                 &$this->fields['Gender']['value'],
                                 &$this->fields['Civil_status']['value'],
                                 &$this->fields['Birth_date']['value'],
                                 &$this->fields['Birth_place']['value'],
                                 &$this->fields['Religion']['value'],
                                 &$this->fields['TIN_num']['value'],
                                 $param['orig_Emp_id']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("Emp_id = ?");

        $bind_params = array('i',
                             &$this->fields['Emp_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function delete_many($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("Emp_id = ?");

        $bind_params = array('i',
                             &$this->fields['Emp_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function select()
    {
        $this->set_query_type('SELECT');
        $this->exec_fetch('array');
        return $this;
    }

    function check_uniqueness($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('SELECT');
        $this->set_where("Emp_id = ?");

        $bind_params = array('i',
                             &$this->fields['Emp_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }

    function check_uniqueness_for_editing($param)
    {
        $this->set_parameters($param);
        //Next two lines just to get the orig_ pkey(s) from $param
        $this->escape_arguments($param);
        extract($param);

        $this->set_query_type('SELECT');
        $this->set_where("Emp_id = ? AND (Emp_id != '$orig_Emp_id')");

        $bind_params = array('i',
                             &$this->fields['Emp_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
