<?php
$servername = "localhost";
$username = "root";
$password = "";
$database_name = "Project_ii";
$conn = mysqli_connect($servername, $username, $password, $database_name);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

if (isset($_POST['Save'])) {
    
    $first_name = $_POST['Firstname'];
    $second_name = $_POST['Secondname'];
    $registration_number = $_POST['RegistrationNumber'];
    $unit_title = $_POST['UnitTitle'];
    $unit_code = $_POST['UnitCode']; 
    $date = $_POST['Date'];

   
    $sql = "INSERT INTO users (FirstName, SecondName, RegistrationNumber, UnitTitle, UnitCode, Date) 
            VALUES ('$first_name', '$second_name', '$registration_number', '$unit_title', '$unit_code', '$date')";

    
    if (mysqli_query($conn, $sql)) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
}
mysqli_close($conn);
?>
