<?php
require 'subclasses/employee_sst.php';
$sst = new employee_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;