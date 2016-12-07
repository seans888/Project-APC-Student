<?php
require_once 'scholarship_dd.php';
class scholarship extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = scholarship_dd::load_dictionary();
        $this->relations  = scholarship_dd::load_relationships();
        $this->subclasses = scholarship_dd::load_subclass_info();
        $this->table_name = scholarship_dd::$table_name;
        $this->tables     = scholarship_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('Scholarship_id, Scholarship_code, Scholarship_description, Scholarship_group, Discount, Waive_fee, Scholarship_apply, Required_GPA, SA_hours, Program_apply, Student_Student_id');
            $this->set_values("?,?,?,?,?,?,?,?,?,?,?");

            $bind_params = array('isssssssssi',
                                 &$this->fields['Scholarship_id']['value'],
                                 &$this->fields['Scholarship_code']['value'],
                                 &$this->fields['Scholarship_description']['value'],
                                 &$this->fields['Scholarship_group']['value'],
                                 &$this->fields['Discount']['value'],
                                 &$this->fields['Waive_fee']['value'],
                                 &$this->fields['Scholarship_apply']['value'],
                                 &$this->fields['Required_GPA']['value'],
                                 &$this->fields['SA_hours']['value'],
                                 &$this->fields['Program_apply']['value'],
                                 &$this->fields['Student_Student_id']['value']);

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
            $this->set_update("Scholarship_code = ?, Scholarship_description = ?, Scholarship_group = ?, Discount = ?, Waive_fee = ?, Scholarship_apply = ?, Required_GPA = ?, SA_hours = ?, Program_apply = ?, Student_Student_id = ?");
            $this->set_where("Scholarship_id = ?");

            $bind_params = array('sssssssssii',
                                 &$this->fields['Scholarship_code']['value'],
                                 &$this->fields['Scholarship_description']['value'],
                                 &$this->fields['Scholarship_group']['value'],
                                 &$this->fields['Discount']['value'],
                                 &$this->fields['Waive_fee']['value'],
                                 &$this->fields['Scholarship_apply']['value'],
                                 &$this->fields['Required_GPA']['value'],
                                 &$this->fields['SA_hours']['value'],
                                 &$this->fields['Program_apply']['value'],
                                 &$this->fields['Student_Student_id']['value'],
                                 &$this->fields['Scholarship_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("Scholarship_id = ?");

        $bind_params = array('i',
                             &$this->fields['Scholarship_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function delete_many($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("");

        $bind_params = array('',
                             );

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
        $this->set_where("Scholarship_id = ?");

        $bind_params = array('i',
                             &$this->fields['Scholarship_id']['value']);

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


        $this->set_query_type('SELECT');
        $this->set_where("Scholarship_id = ? AND (Scholarship_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['Scholarship_id']['value'],
                             &$this->fields['Scholarship_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
