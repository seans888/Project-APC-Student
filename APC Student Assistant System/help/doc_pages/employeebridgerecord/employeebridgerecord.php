<?php
require 'path.php';
init_cobalt();
require 'subclasses/employeebridgerecord_doc.php';
$obj_doc = new employeebridgerecord_doc;
$obj_doc->auto_doc();