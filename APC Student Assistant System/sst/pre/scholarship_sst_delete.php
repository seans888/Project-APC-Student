<?php
require 'subclasses/scholarship_sst.php';
$sst = new scholarship_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;