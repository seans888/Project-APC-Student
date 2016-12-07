<?php
require 'subclasses/scholarship_sst.php';
$sst = new scholarship_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;