<?php
require 'subclasses/record_sst.php';
$sst = new record_sst;
$sst->auto_test('delete');
$sst_script = $sst->script;