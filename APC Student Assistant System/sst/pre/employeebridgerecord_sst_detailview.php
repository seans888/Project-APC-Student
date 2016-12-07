<?php
require 'subclasses/employeebridgerecord_sst.php';
$sst = new employeebridgerecord_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;