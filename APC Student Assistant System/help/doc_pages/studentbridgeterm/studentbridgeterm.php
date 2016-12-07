<?php
require 'path.php';
init_cobalt();
require 'subclasses/studentbridgeterm_doc.php';
$obj_doc = new studentbridgeterm_doc;
$obj_doc->auto_doc();