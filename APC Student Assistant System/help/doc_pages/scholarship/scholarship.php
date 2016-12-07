<?php
require 'path.php';
init_cobalt();
require 'subclasses/scholarship_doc.php';
$obj_doc = new scholarship_doc;
$obj_doc->auto_doc();