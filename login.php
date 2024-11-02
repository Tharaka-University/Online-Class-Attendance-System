<?php
session_start();

// Database connection settings
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "attendance";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $email=$_POST['email'];

    // Prepare SQL statement to select the user
    $stmt = $conn->prepare("SELECT password FROM users WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        $stmt->bind_result($hashed_password);
        $stmt->fetch();

        // Verify the password
        if (password_verify($password, $hashed_password)) {
            $_SESSION['username'] = $username; // Store session
            $_SESSION['login_message'] = "Login successful!"; // Success message
            header("Location: attedance.php"); // Redirect to attendance form
            exit;
        } else {
            $_SESSION['login_message'] = "Invalid username or password. Please try again."; // Failure message
            header("Location: login.php"); // Redirect back to login
            exit;
        }
    } else {
        $_SESSION['login_message'] = "Invalid username or password. Please try again."; // Failure message
        header("Location: login.php"); // Redirect back to login
        exit;
    }

    $stmt->close();
}

// Close the connection
$conn->close();
?>
