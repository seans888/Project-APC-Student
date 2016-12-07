<?php
require 'path.php';
init_cobalt();
require 'subclasses/reserve_doc.php';
$obj_doc = new reserve_doc;
$obj_doc->auto_doc();