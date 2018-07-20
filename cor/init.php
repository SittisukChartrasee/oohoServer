<?php
header("Access-Control-Allow-Origin: *");
header("content-type: application/json");
require_once 'lib/nusoap.php';

$WSHeader = array(
  "UsernameToken"=>array(
      "Username"=>"YourUserName",
      "Password"=>"YourPassword",
  )
);

$client = new nusoap_client('https://oohoserver.000webhostapp.com/server/server.php?wsdl');

$header[] = new SoapHeader("http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd", "Security", $WSHeader);

$client->__setSoapHeaders($header);

// $REsponse = $client->YourRequest();
