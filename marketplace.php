<?php
    header("Content-Type: application/json; charset=utf-8");
    $target_dir = "uploads/";
    
    $uploadOk = 1;
    
    $username = "nh529_Nic";
    $password = "Nerbib2s";
    $dbname = "nh529_marketPlaceItems";
    
    $conn = new mysqli("localhost", $username, $password, $dbname);
    
    if ($conn->connect_error){
        http_response_code(500);
    } 
    
    if($_SERVER["REQUEST_METHOD"] == "POST") {
        $imageFileType = explode( ".", strtolower(basename($_FILES["pic_name"]["name"])));
        $imageFileType = $imageFileType[sizeof($imageFileType)-1];
        
        $target_file = $target_dir . uniqid() . "_" . basename($_FILES["pic_name"]["name"]);
        
        $name = $_POST["name"];
        $price = $_POST["price"];
        $description = $_POST["description"];
        $seller = $_POST["seller"];
        $date = date("Y-m-d H:i:s");
        
        $check = getimagesize($_FILES["pic_name"]["tmp_name"]);
        if($check !== false) {
            $uploadOk = 1;
        } else {
            $uploadOk = 0;
        }
        
        if ($_FILES["pic_name"]["size"] > 500000) {
            $uploadOk = 0;
        }
        
        if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
        && $imageFileType != "gif" ) {
            $uploadOk = 0;
        }
        
        if ($uploadOk == 0) {
            http_response_code(400);
        } else {
            if (move_uploaded_file($_FILES["pic_name"]["tmp_name"], $target_file)) {
                $conn->query("INSERT INTO `items` (`name`, `price`, `pic_name`, `description`, `seller`, `date`) VALUES ('" . $name . "','" . $price . "','" . $target_file . "','" . $description . "','" . $seller . "','" . $date ."')");
                if($conn->error) {
                    throw new Exception("MySQL error: " . $conn->error);
                }
                $id = $conn->insert_id;
                $data = array();
                $data["id"] = $id;
                http_response_code(201);
                echo json_encode($data);
            } else {
                http_response_code(400);
            }
            
        }
    }
    else if ($_SERVER["REQUEST_METHOD"] == "GET"){
        $result_array = array();
        
        // Check if search term is present
        if(array_key_exists("searchTerm", $_GET) == TRUE) {
            $searchTerm = mysqli_real_escape_string($conn, $_GET['searchTerm']);
            $data = $conn->query("SELECT `id`, `name`, `price`, `pic_name`, `description`, `seller`, `date` FROM `items` WHERE name LIKE '%" . $searchTerm . "%'");
            if($conn->error) {
                throw new Exception("MySQL error: " . $conn->error);
            }
        }
        // Check if id is present
        else if(array_key_exists("id", $_GET) == TRUE) {
            $data = $conn->query("SELECT `id`, `name`, `price`, `pic_name`, `description`, `seller`, `date` FROM `items` WHERE id='" . $_GET["id"] . "'");
            if($conn->error) {
                throw new Exception("MySQL error: " . $conn->error);
            }
        } 
        // If no specific search parameters, return all items
        else {
            $data = $conn->query("SELECT `id`, `name`, `price`, `pic_name`, `description`, `seller`, `date` FROM `items`");
            if($conn->error) {
                throw new Exception("MySQL error: " . $conn->error);
            }
        }
        
        $results = $data->fetch_all(MYSQLI_ASSOC); // make into dictionary or associative array
        $result_array["results"] = $results;
        if (sizeof($result_array["results"]) > 0){
            echo json_encode($result_array);
        } else {
            http_response_code(204);
        }
    }
if($_SERVER["REQUEST_METHOD"] == "DELETE") {
    if(isset($_GET['id'])) {
        $id = mysqli_real_escape_string($conn, $_GET['id']);

        // Create delete query
        $query = "DELETE FROM `items` WHERE id='" . $id . "'";

        // Print delete query to error log
        error_log("Delete query: " . $query);

        $result = $conn->query($query);

        if($result === FALSE) {
            // Print error message to error log
            error_log("Error executing query: " . $conn->error);
            http_response_code(400);
            return;
        }

        // Check if any row has been deleted
        if($conn->affected_rows === 0) {
            error_log("No rows deleted. Item with ID " . $id . " might not exist.");
            http_response_code(400);
            return;
        }

        http_response_code(200);
    } else {
        http_response_code(400);
    }
}

