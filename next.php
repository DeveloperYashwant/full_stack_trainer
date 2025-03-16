<?php
// Database configuration
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'hacker');

// Email configuration
define('COMPANY_EMAIL', 'yashghole12@gmail.com');
define('EMAIL_SUBJECT', 'Payment Confirmation');

// Initialize connection variable
$conn = null;

try {
    // Validate required fields
    $required = ['fn', 'ln', 'cn', 'dof', 'pa', 'em'];
    foreach ($required as $field) {
        if (empty($_POST[$field])) {
            throw new Exception("Missing required field: $field");
        }
    }

    // Sanitize inputs
    $firstName = htmlspecialchars($_POST['fn']);
    $lastName = htmlspecialchars($_POST['ln']);
    $contact = filter_var($_POST['cn'], FILTER_SANITIZE_NUMBER_INT);
    $date = $_POST['dof'];
    $amountPaid = filter_var($_POST['pa'], FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_ALLOW_FRACTION);
    $email = filter_var($_POST['em'], FILTER_SANITIZE_EMAIL);

    // Validate email
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        throw new Exception("Invalid email address");
    }

    // Create database connection
    $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
    if ($conn->connect_error) {
        throw new Exception("Connection failed: " . $conn->connect_error);
    }

    // Start transaction
    $conn->begin_transaction();

    // Insert payment record
    $stmt = $conn->prepare("INSERT INTO att (fn, ln, cn, dof, pa, email, ba) VALUES (?, ?, ?, ?, ?, ?, 0)");
    $stmt->bind_param("ssssds", $firstName, $lastName, $contact, $date, $amountPaid, $email);
    $stmt->execute();

    // Get total fee
    $stmt = $conn->prepare("SELECT tf FROM details WHERE fn = ? AND ln = ?");
    $stmt->bind_param("ss", $firstName, $lastName);
    $stmt->execute();
    $result = $stmt->get_result();
    if ($result->num_rows === 0) {
        throw new Exception("User not found in details table");
    }
    $totalFee = $result->fetch_assoc()['tf'];

    // Get total payments
    $stmt = $conn->prepare("SELECT SUM(pa) AS total_paid FROM att WHERE fn = ? AND ln = ?");
    $stmt->bind_param("ss", $firstName, $lastName);
    $stmt->execute();
    $totalPaid = $stmt->get_result()->fetch_assoc()['total_paid'] ?? 0;

    // Calculate balance
    $balance = $totalFee - $totalPaid;

    // Update balance
    $stmt = $conn->prepare("UPDATE att SET ba = ? WHERE fn = ? AND ln = ?");
    $stmt->bind_param("dss", $balance, $firstName, $lastName);
    $stmt->execute();

    // Commit transaction
    $conn->commit();

    // Prepare and send email
    $emailBody = "..."; // Keep your existing email template here

    // Email headers configuration
$headers = [
    'MIME-Version: 1.0',
    'Content-type: text/html; charset=UTF-8',
@  'From: ' . yashghole12@gmail.com, // Properly concatenated
    'X-Mailer: PHP/' . phpversion()
];

if (mail($email, EMAIL_SUBJECT, $emailBody, implode("\r\n", $headers))) {
    header('Location: attent.php?status=success');
    exit();
}

} catch (Exception $e) {
    // Rollback only if connection was successful
    if ($conn instanceof mysqli && !$conn->connect_error) {
        $conn->rollback();
    }
    
    // Handle error and redirect
    error_log("Error: " . $e->getMessage());
    header('Location: attent.php?status=error&message=' . urlencode($e->getMessage()));
    exit();
} finally {
    // Close connection if it exists
    if ($conn instanceof mysqli) {
        $conn->close();
    }
}