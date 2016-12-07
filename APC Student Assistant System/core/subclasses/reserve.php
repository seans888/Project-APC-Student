<?php
require_once 'reserve_dd.php';
class reserve extends data_abstraction

{
    var $fields = array();



    function __construct()
    {
        $this->fields     = reserve_dd::load_dictionary();
        $this->relations  = reserve_dd::load_relationships();
        $this->subclasses = reserve_dd::load_subclass_info();
        $this->table_name = reserve_dd::$table_name;
        $this->tables     = reserve_dd::$table_name;
    }

    function add($param)
    {
        $con=mysqli_connect("localhost", "root", "", "apc");
        $results = mysqli_query($con ,'select t.id_number from (select username ,student_id as id_number from `user` a, `person` b, `student` c where a.person_id = b.person_id and (last_name = student_last_name) and (first_name = student_first_name) and (middle_name = student_middle_name) union select username, emp_id as id_number from `user` a, `person` b, `employee` c where a.person_id = b.person_id and (last_name = emp_last_name) and (first_name = emp_first_name) and (middle_name = emp_middle_name)) as t where t.username = "'. $_SESSION['user'] .'"');
        $row  = mysqli_fetch_array($results);
        mysqli_close($con);

        $this->set_parameters($param);

        if($this->stmt_template=='')
        {
            $this->set_query_type('INSERT');
            $this->set_fields('Reserve_id, Reserve_date, Reserve_text, Reserve_qty, Department_name, Status, Employee_Employee_id');
            $this->set_values("?,?,?,?,?,?,?");

            $bind_params = array('ississi',
                                 &$this->fields['Reserve_id']['value'],
                                 &$this->fields['Reserve_date']['value'],
                                 &$this->fields['Reserve_text']['value'],
                                 &$this->fields['Reserve_qty']['value'],
                                 &$this->fields['Department_name']['value'],
                                 &$this->fields['Status']['value'],
                                 &$this->fields['Employee_Employee_id']['value']);

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
            $this->set_update("Reserve_date = ?, Reserve_text = ?, Reserve_qty = ?, Department_name = ?, Status = ?, Employee_Employee_id = ?");
            $this->set_where("Reserve_id = ?");

            $bind_params = array('ssissii',
                                 &$this->fields['Reserve_date']['value'],
                                 &$this->fields['Reserve_text']['value'],
                                 &$this->fields['Reserve_qty']['value'],
                                 &$this->fields['Department_name']['value'],
                                 &$this->fields['Status']['value'],
                                 &$this->fields['Employee_Employee_id']['value'],
                                 &$this->fields['Reserve_id']['value']);

            $this->stmt_prepare($bind_params);
        }
        $this->stmt_execute();

        return $this;
    }

    function delete($param)
    {
        $this->set_parameters($param);
        $this->set_query_type('DELETE');
        $this->set_where("Reserve_id = ?");

        $bind_params = array('i',
                             &$this->fields['Reserve_id']['value']);

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
        $this->set_where("Reserve_id = ?");

        $bind_params = array('i',
                             &$this->fields['Reserve_id']['value']);

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
        $this->set_where("Reserve_id = ? AND (Reserve_id != ?)");

        $bind_params = array('ii',
                             &$this->fields['Reserve_id']['value'],
                             &$this->fields['Reserve_id']['value']);

        $this->stmt_prepare($bind_params);
        $this->stmt_execute();
        $this->stmt_close();

        if($this->num_rows > 0) $this->is_unique = FALSE;
        else $this->is_unique = TRUE;

        return $this;
    }
}
