<?php
require_once 'student_dd.php';
class student extends data_abstraction
{
    var $fields = array();


    function __construct()
    {
        $this->fields     = student_dd::load_dictionary();
        $this->relations  = student_dd::load_relationships();
        $this->subclasses = student_dd::load_subclass_info();
        $this->table_name = student_dd::$table_name;
        $this->tables     = student_dd::$table_name;
    }

    function add($param)
    {
        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('Student_id, Student_last_name, Student_first_name, Student_middle_name, Birth_date, Birth_place, Entry_level, Nationality, Gender, Address, Postal_code, Tel_num, Mobile_num, Email, Religion, Civil_status');
            $this->set_values("?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?");

            $bind_params = array('isssssssssiissss',
                                 &$this->fields['Student_id']['value'],
                                 &$this->fields['Student_last_name']['value'],
                                 &$this->fields['Student_first_name']['value'],
                                 &$this->fields['Student_middle_name']['value'],
                                 &$this->fields['Birth_date']['value'],
                                 &$this->fields['Birth_place']['value'],
                                 &$this->fields['Entry_level']['value'],
                                 &$this->fields['Nationality']['value'],
                                 &$this->fields['Gender']['value'],
                                 &$this->fields['Address']['value'],
                                 &$this->fields['Postal_code']['value'],
                                 &$this->fields['Tel_num']['value'],
                                 &$this->fields['Mobile_num']['value'],
                                 &$this->fields['Email']['value'],
                                 &$this->fields['Religion']['value'],
                                 &$this->fields['Civil_status']['value']);

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
            $this->set_update("Student_id = ?, Student_last_name = ?, Student_first_name = ?, Student_middle_name = ?, Birth_date = ?, Birth_place = ?, Entry_level = ?, Nationality = ?, Gender = ?, Address = ?, Postal_code = ?, Tel_num = ?, Mobile_num = ?, Email = ?, Religion = ?, Civil_status = ?");
            $this->set_where("Student_id = ?");

            $bind_params = array('isssssssssiissssi',
                                 &$this->fields['Student_id']['value'],
                                 &$this->fields['Student_last_name']['value'],
                                 &$this->fields['Student_first_name']['value'],
                                 &$this->fields['Student_middle_name']['value'],
                                 &$this->fields['Birth_date']['value'],
                                 &$this->fields['Birth_place']['value'],
                                 &$this->fields['Entry_level']['value'],
                                 &$this->fields['Nationality']['value'],
                                 &$this->fields['Gender']['value'],
                                 &$this->fields['Address']['value'],
                                 &$this->fields['Postal_code']['value'],
                                 &$this->fields['Tel_num']['value'],
                                 &$this->fields['Mobile_num']['value'],
                                 &$this->fields['Email']['value'],
                                 &$this->fields['Religion']['value'],
                                 &$this->fields['Civil_status']['value'],
                                 $param['orig_Student_id']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("Student_id = ?");

        $bind_params = array('i',
                             &$this->fields['Student_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        return $this;
    }

    function delete_many($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("Student_id = ?");

        $bind_params = array('i',
                             &$this->fields['Student_id']['value']);

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
        $this->set_where("Student_id = ?");

        $bind_params = array('i',
                             &$this->fields['Student_id']['value']);

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
        $this->set_where("Student_id = ? AND (Student_id != '$orig_Student_id')");

        $bind_params = array('i',
                             &$this->fields['Student_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
