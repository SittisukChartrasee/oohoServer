<?php
require_once 'cor/init.php';
$result = $client->call('getTopic');
echo $result;
?>