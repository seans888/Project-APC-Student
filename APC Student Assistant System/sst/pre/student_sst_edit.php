<?php
require 'subclasses/student_sst.php';
$sst = new student_sst;
$sst->auto_test();
$sst_script = $sst->script;