<?php
require 'subclasses/reserve_sst.php';
$sst = new reserve_sst;
$sst->auto_test();
$sst_script = $sst->script;