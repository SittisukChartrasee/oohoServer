<?php
require_once 'cor/init.php';
$title = $_POST['a'];
$content = $_POST['b'];
$postDate = '2018-02-01';
$postStatus = '1';
$startTravel = '2017-01-01';
$dayCount = '365';
$whoWith = 'family';
$view = '300';
$share = '400';
$data = array(
        'title' => $_POST["a"],
        'content' => $_POST["b"],
        'style' => $_POST["style"],
        'postDate' => $postDate,
        'postStatus' => $postStatus,
        'startTravel' => $startTravel,
        'dayCount' => $dayCount,
        'whoWith' => $whoWith,
        'view' => $view,
        'share' => $share,
    );
$result = $client->call('addTopic', $data);

$a['alert'] = $result;
echo json_encode($a);
?>