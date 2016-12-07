<?php
require 'path.php';
init_cobalt();
require 'subclasses/studentbridgereserve_doc.php';
$obj_doc = new studentbridgereserve_doc;
$obj_doc->auto_doc();