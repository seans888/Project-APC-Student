<?php
require 'subclasses/studentbridgeterm_sst.php';
$sst = new studentbridgeterm_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;