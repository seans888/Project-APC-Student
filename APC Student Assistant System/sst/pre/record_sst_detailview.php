<?php
require 'subclasses/record_sst.php';
$sst = new record_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;