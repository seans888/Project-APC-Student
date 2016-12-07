<?php
require 'path.php';
init_cobalt();
require 'subclasses/student_doc.php';
$obj_doc = new student_doc;
$obj_doc->auto_doc();