<?php
require 'subclasses/studentbridgereserve_sst.php';
$sst = new studentbridgereserve_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;