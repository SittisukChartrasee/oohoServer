<?php
header("Access-Control-Allow-Origin: *");
header("content-type: application/json");
require_once 'lib/nusoap.php';
$client = new nusoap_client('https://oohoserver.000webhostapp.com/server/server.php?wsdl');
