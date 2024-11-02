<?php
// Database connection settings
$servername = "localhost";
$username = "root";
$password = ""; // Default password for XAMPP
$dbname = "attendance";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die('Connection failed: ' . $conn->connect_error);
}

// New user credentials
$new_username = "jack";
$new_password = "12345"; // Plain-text password for testing
$new_email = "edv2.09813.23@student.tharaka.ac.ke";

// Hash the password
$hashed_password = password_hash($new_password, PASSWORD_DEFAULT);

// Prepare SQL statement to insert the new user
$stmt = $conn->prepare("INSERT INTO users (username, password) VALUES (?, ?)");
$stmt->bind_param("ss", $new_username, $hashed_password);

if ($stmt->execute()) {
    echo "New user added successfully!";
} else {
    echo "Error: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
