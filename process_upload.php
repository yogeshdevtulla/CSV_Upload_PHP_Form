
<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);


$servername = "localhost";
$username = "root";
$password = "";
$dbname = "hasmind_db";
// define('HOST',"localhost");
// 	define('USER',"root");
// 	define('PASS',"");
// 	define('DB_NAME',"hasmind_db");
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// $conn = new mysqli(HOST, USER, PASS, DB_NAME);

// Check connections
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
// new changes
// $today = date('Y-m-d');
// $yesterday = date('Y-m-d');
// $daybeforeyesterday = date('Y-m-d');
$display_table = "";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Check if the form was submitted with the correct submit button
    if (isset($_POST["submit"])) {
        // Check if a file was uploaded without errors
        if (isset($_FILES["csvfile"]) && $_FILES["csvfile"]["error"] == 0) {
            $file = $_FILES["csvfile"]["tmp_name"];
            $handle = fopen($file, "r");

            while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
                $filename = $data[0];  // Assuming this is the value for 'filename'
                $package = $data[1];   // Assuming this is the value for 'package'
                $platform = $data[2];  // Assuming this is the value for 'plateform'
                $status = 1;           // Assuming you want to set 'status' to 1
                $timestamp = date('Y-m-d H:i:s');  // Current timestamp
                // echo $data."<br>";
                $sql = sprintf(
                    "INSERT INTO campaigns (filename, package, plateform, status, timestamp) VALUES ('%s', '%s', '%s', %d, '%s')",
                    $filename,
                    $package,
                    $platform,
                    $status,
                    $timestamp
                );

                if ($conn->query($sql) === TRUE) {
                    echo "Record inserted successfully <br>";

                } else {
                    echo "Error: " . $sql . "<br>" . $conn->error;
                }
            }

            fclose($handle);
        } else {
            echo "No file uploaded.";
        }
    }
}

$conn->close();
?>