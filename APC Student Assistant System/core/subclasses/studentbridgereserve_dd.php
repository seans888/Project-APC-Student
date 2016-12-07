<?php
class studentbridgereserve_dd
{

    static $table_name = 'studentbridgereserve';
    static $readable_name = 'New Reservation Request';

    static function load_dictionary()
    {
      $con=mysqli_connect("localhost", "root", "", "apc");
$results = mysqli_query($con ,'select t.id_number from (select username ,student_id as id_number from `user` a, `person` b, `student` c where a.person_id = b.person_id and (last_name = student_last_name) and (first_name = student_first_name) and (middle_name = student_middle_name) union select username, emp_id as id_number from `user` a, `person` b, `employee` c where a.person_id = b.person_id and (last_name = emp_last_name) and (first_name = emp_first_name) and (middle_name = emp_middle_name)) as t where t.username = "'. $_SESSION['user'] .'"');
$row  = mysqli_fetch_array($results);
mysqli_close($con);

//$var_value = $_SESSION['reserveid'];
        $fields = array(
                    'Reserve_Reserve_id' => array('value'=>'',//$var_value,
                                          'nullable'=>FALSE,
                                          'data_type'=>'integer',
                                          'length'=>20,
                                          'required'=>TRUE,
                                          'attribute'=>'',
                                          'control_type'=>'textbox',
                                          'size'=>'60',
                                          'drop_down_has_blank'=>TRUE,
                                          'label'=>'Reservation ID',
                                          'extra'=>'',
                                          'companion'=>'',
                                          'in_listview'=>TRUE,
                                          'char_set_method'=>'generate_num_set',
                                          'char_set_allow_space'=>FALSE,
                                          'extra_chars_allowed'=>'-',
                                          'allow_html_tags'=>FALSE,
                                          'trim'=>'trim',
                                          'valid_set'=>array(),
                                          'date_elements'=>array('','',''),
                                          'date_default'=>'',
                                          'list_type'=>'',
                                          'list_settings'=>array(''),
                                          'rpt_in_report'=>TRUE,
                                          'rpt_column_format'=>'normal',
                                          'rpt_column_alignment'=>'center',
                                          'rpt_show_sum'=>TRUE),
                    'Student_Student_id' => array('value'=>$row['0'],
                                          'nullable'=>FALSE,
                                          'data_type'=>'integer',
                                          'length'=>20,
                                          'required'=>TRUE,
                                          'attribute'=>'',
                                          'control_type'=>'textbox',
                                          'size'=>'60',
                                          'drop_down_has_blank'=>TRUE,
                                          'label'=>'Student ID',
                                          'extra'=>'',
                                          'companion'=>'',
                                          'in_listview'=>TRUE,
                                          'char_set_method'=>'generate_num_set',
                                          'char_set_allow_space'=>FALSE,
                                          'extra_chars_allowed'=>'-',
                                          'allow_html_tags'=>FALSE,
                                          'trim'=>'trim',
                                          'valid_set'=>array(),
                                          'date_elements'=>array('','',''),
                                          'date_default'=>'',
                                          'list_type'=>'',
                                          'list_settings'=>array(''),
                                          'rpt_in_report'=>TRUE,
                                          'rpt_column_format'=>'normal',
                                          'rpt_column_alignment'=>'center',
                                          'rpt_show_sum'=>TRUE)
                       );
        return $fields;
    }

    static function load_relationships()
    {
        $relations = array();

        return $relations;
    }

    static function load_subclass_info()
    {
        $subclasses = array('html_file'=>'studentbridgereserve_html.php',
                            'html_class'=>'studentbridgereserve_html',
                            'data_file'=>'studentbridgereserve.php',
                            'data_class'=>'studentbridgereserve');
        return $subclasses;
    }

}