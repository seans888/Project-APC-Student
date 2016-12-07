<?php
require 'subclasses/employeebridgerecord_sst.php';
$sst = new employeebridgerecord_sst;
$sst->auto_test();
$sst_script = $sst->script;