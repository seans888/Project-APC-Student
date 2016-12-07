<?php
require 'path.php';
init_cobalt();
require 'subclasses/record_doc.php';
$obj_doc = new record_doc;
$obj_doc->auto_doc();