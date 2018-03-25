<?php
    require_once '../lib/nusoap.php';
    
    function connection() {
        $conn = mysqli_connect('localhost', 'id5098067_oohoserver', '6bV-LQF-Mud-C2e', 'id5098067_oohoserver');
        mysqli_set_charset($conn, 'utf8');
        return $conn;
    }

    function getTopic() {
        $conn = connection();
        $data = [];
        $sql = "SELECT * FROM topic";
        $result = $conn->query($sql);
        while ($row = mysqli_fetch_assoc($result)) $data[] = $row;
        return json_encode($data);
    }
    
    function addTopic(
        $title,
        $content,
        $style,
        $postDate,
        $postStatus,
        $startTravel,
        $dayCount,
        $whoWith,
        $view,
        $share
    ) {
        $conn = connection();
        $data = [];
        $text = 'error something in back-end';
        $sql = "INSERT INTO topic (title, content, style, saveDate, postStatus, startTravel, travelDay, whoWith, viewCount, shareCount) 
                VALUES ('$title', '$content', '$style', '$postDate', '$postStatus', '$startTravel', '$dayCount', '$whoWith', $view, $share)";
        $result = $conn->query($sql);
        if ($result) {
            $text = 'add data full success!';
        }
        return $text;
    }

    function updateData($id) {

    }
    
    function removeData($id) {

    }

    $server = new nusoap_server();
    $server->configureWSDL('oohoService');
    $server->register(
        'getTopic',
        array('text' => 'xsd:string'),
        array('return' => 'xsd:string'),
        'getData',
        'getData#data',
        'rpc',
        'encoded',
        'get data for show'
    );
    
    
    $server->register(
        'addTopic',
        array(
           'title' => "xsd:string",
           'content' => "xsd:string",
           'style' => "xsd:string",
    	   'postDate' => "xsd:string",
    	   'postStatus' => "xsd:string",
    	   'startTravel' => "xsd:string",
    	   'dayCount' => "xsd:string",
    	   'whoWith' => "xsd:string",
    	   'view' => "xsd:string",
    	   'share' => "xsd:string",
        ),
        array('return' =>'xsd:string'),
        'addData',
        'addData#data',
        'rpc',
        'encoded',
        'add data for add'
    );
    $server->service(file_get_contents('php://input'));
?>