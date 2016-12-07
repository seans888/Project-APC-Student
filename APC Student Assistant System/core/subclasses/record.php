<?php
require_once 'record_dd.php';
class record extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = record_dd::load_dictionary();
        $this->relations  = record_dd::load_relationships();
        $this->subclasses = record_dd::load_subclass_info();
        $this->table_name = record_dd::$table_name;
        $this->tables     = record_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('Record_id, Record_date, Record_time_in, Record_time_out, Department_name, Scope_of_work, Status, Term_hour, Reserve_Reserve_id, Term_Term_id');
            $this->set_values("?,?,?,?,?,?,?,?,?,?");

            $bind_params = array('isssssssii',
                                 &$this->fields['Record_id']['value'],
                                 &$this->fields['Record_date']['value'],
                                 &$this->fields['Record_time_in']['value'],
                                 &$this->fields['Record_time_out']['value'],
                                 &$this->fields['Department_name']['value'],
                                 &$this->fields['Scope_of_work']['value'],
                                 &$this->fields['Status']['value'],
                                 &$this->fields['Term_hour']['value'],
                                 &$this->fields['Reserve_Reserve_id']['value'],
                                 &$this->fields['Term_Term_id']['value']);

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
            $this->set_update("Record_date = ?, Record_time_in = ?, Record_time_out = ?, Department_name = ?, Scope_of_work = ?, Status = ?, Term_hour = ?, Reserve_Reserve_id = ?, Term_Term_id = ?");
            $this->set_where("Record_id = ?");

            $bind_params = array('sssssssiii',
                                 &$this->fields['Record_date']['value'],
                                 &$this->fields['Record_time_in']['value'],
                                 &$this->fields['Record_time_out']['value'],
                                 &$this->fields['Department_name']['value'],
                                 &$this->fields['Scope_of_work']['value'],
                                 &$this->fields['Status']['value'],
                                 &$this->fields['Term_hour']['value'],
                                 &$this->fields['Reserve_Reserve_id']['value'],
                                 &$this->fields['Term_Term_id']['value'],
                                 &$this->fields['Record_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("Record_id = ?");

        $bind_params = array('i',
                             &$this->fields['Record_id']['value']);

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
        $this->set_where("Record_id = ?");

        $bind_params = array('i',
                             &$this->fields['Record_id']['value']);

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
        $this->set_where("Record_id = ? AND (Record_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['Record_id']['value'],
                             &$this->fields['Record_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
