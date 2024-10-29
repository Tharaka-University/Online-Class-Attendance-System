<?php
// Database connection settings
$servername = "localhost";
$username = "root";
$password = ""; // Default password is empty in XAMPP
$dbname = "attandance"; // Replace with your database name

// Create a connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if form data is received
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get data from the form
    $firstName = $_POST['firstName'];
    $lastName = $_POST['lastName'];
    $check_us = $_POST['check'];
    $registrationNumber = $_POST['registrationNumber'];
    $unitCode = $_POST['unitCode'];
    $unitTitle = $_POST['unitTitle'];
    $date = $_POST['date'];
    $time = $_POST['time'];

    // SQL query to insert data into the attendance table
    $sql = "INSERT INTO attendance (firstName, lastName, check, registrationNumber, unitCode, unitTitle, date, time)
            VALUES ('$firstName', '$lastName', '$check', '$registrationNumber', '$unitCode', '$unitTitle', '$date', '$time')";

    // Execute the query and provide feedback
    if ($conn->query($sql) === TRUE) {
        echo "Attendance record successfully saved.";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Close the connection
$conn->close();
?>
