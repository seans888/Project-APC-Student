<?php
require 'subclasses/reserve_sst.php';
$sst = new reserve_sst;
$sst->auto_test('detail_view');
$sst_script = $sst->script;