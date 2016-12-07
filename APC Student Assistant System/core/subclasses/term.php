<?php
require_once 'term_dd.php';
class term extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = term_dd::load_dictionary();
        $this->relations  = term_dd::load_relationships();
        $this->subclasses = term_dd::load_subclass_info();
        $this->table_name = term_dd::$table_name;
        $this->tables     = term_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('Term_id, school_year, Term_num, Term_start, Term_end, Term_hour');
            $this->set_values("?,?,?,?,?,?");

            $bind_params = array('isssss',
                                 &$this->fields['Term_id']['value'],
                                 &$this->fields['school_year']['value'],
                                 &$this->fields['Term_num']['value'],
                                 &$this->fields['Term_start']['value'],
                                 &$this->fields['Term_end']['value'],
                                 &$this->fields['Term_hour']['value']);

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
            $this->set_update("school_year = ?, Term_num = ?, Term_start = ?, Term_end = ?, Term_hour = ?");
            $this->set_where("Term_id = ?");

            $bind_params = array('sssssi',
                                 &$this->fields['school_year']['value'],
                                 &$this->fields['Term_num']['value'],
                                 &$this->fields['Term_start']['value'],
                                 &$this->fields['Term_end']['value'],
                                 &$this->fields['Term_hour']['value'],
                                 &$this->fields['Term_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("Term_id = ?");

        $bind_params = array('i',
                             &$this->fields['Term_id']['value']);

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
        $this->set_where("Term_id = ?");

        $bind_params = array('i',
                             &$this->fields['Term_id']['value']);

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
        $this->set_where("Term_id = ? AND (Term_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['Term_id']['value'],
                             &$this->fields['Term_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
