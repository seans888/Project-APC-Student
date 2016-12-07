<?php
require 'subclasses/employee_sst.php';
$sst = new employee_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;