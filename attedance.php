<?php
// Database connection settings
error_reporting(E_ALL);
ini_set('display_errors', 1);
$servername = "localhost";
$username = "root";
$password = ""; // Default password is empty in XAMPP
$dbname = "attendance"; // Make sure this matches your database name

// Create a connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die('Connection failed:' . $conn->connect_error);
}

// Check if form data is received
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get data from the form
    $firstName = $_POST['firstName'];
    $lastName = $_POST['lastName'];
    $check = $_POST['check']; // changed variable name from 'check_us' to 'check'
    $registrationNumber = $_POST['registrationNumber'];
    $unitCode = $_POST['unitCode'];
    $unitTitle = $_POST['unitTitle'];
    $date = $_POST['date'];
    $time = $_POST['time'];

    // Prepare an SQL statement to insert data into the attendance table
    $stmt = $conn->prepare("INSERT INTO attendance (firstName, lastName, `check`, registrationNumber, unitCode, unitTitle, date, time) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssssssss", $firstName, $lastName, $check, $registrationNumber, $unitCode, $unitTitle, $date, $time);

    // Execute the statement and provide feedback
    if ($stmt->execute()) {
        echo "Attendance record successfully saved.";
    } else {
        echo "Error: " . $stmt->error;
    }

    // Close the statement
    $stmt->close();
}

// Close the connection
$conn->close();
?>
