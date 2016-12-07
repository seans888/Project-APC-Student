<?php
require 'subclasses/studentbridgereserve_sst.php';
$sst = new studentbridgereserve_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;