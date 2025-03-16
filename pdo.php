<?php
// Database Connection
$host = "localhost";
$dbname = "contacts_db";
$username = "root";
$password = "";

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Contact Manager</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="container">
    
    <h2 class="mt-4">Login</h2>
    <form method="post" action="login.php" class="mb-3">
        <input type="text" name="username" class="form-control" placeholder="Username" required>
        <input type="password" name="password" class="form-control mt-2" placeholder="Password" required>
        <button type="submit" class="btn btn-primary mt-2">Login</button>
    </form>

    <!-- Logout -->
    <a href="logout.php" class="btn btn-danger">Logout</a>

    <h2 class="mt-4">Add Contact Person</h2>
    <form method="post" action="add_cp.php" class="mb-3">
        <input type="text" name="name" class="form-control" placeholder="Name" required>
        <input type="text" name="phone" class="form-control mt-2" placeholder="Phone" required>
        <button type="submit" class="btn btn-success mt-2">Add Contact</button>
    </form>

    <h2 class="mt-4">List/Search Contact Persons</h2>
    <form method="get" action="list_cp.php" class="mb-3">
        <input type="text" name="search" class="form-control" placeholder="Search Contacts">
        <button type="submit" class="btn btn-info mt-2">Search</button>
    </form>

    <?php
    $search = isset($_GET['search']) ? $_GET['search'] : '';
    $sql = "SELECT * FROM contacts WHERE name LIKE :search";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(['search' => "%$search%"]);
    echo "<table class='table table-bordered'><tr><th>Name</th><th>Phone</th><th>Action</th></tr>";
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        echo "<tr><td>" . $row['name'] . "</td><td>" . $row['phone'] . "</td>";
        echo "<td><a href='update_cp.php?id=" . $row['id'] . "' class='btn btn-warning'>Edit</a></td></tr>";
    }
    echo "</table>";
    ?>
<h2 class="mt-4">Update Contact Person</h2>
<form method="post" action="update_cp.php">
    <input type="hidden" name="id" value="<?php echo htmlspecialchars($_GET['id'] ?? '', ENT_QUOTES, 'UTF-8'); ?>">
    <input type="text" name="name" class="form-control" placeholder="Name" required>
    <input type="text" name="phone" class="form-control mt-2" placeholder="Phone" required>
    <button type="submit" class="btn btn-primary mt-2">Update Contact</button>
</form>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

<?php
// Login Processing
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['username'])) {
    session_start();
    $username = $_POST['username'];
    $password = $_POST['password'];
    
    $sql = "SELECT * FROM users WHERE username = :username";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(['username' => $username]);
    $user = $stmt->fetch(PDO::FETCH_ASSOC);
    
    if ($user && password_verify($password, $user['password'])) {
        $_SESSION['user'] = $user['username'];
        header("Location: index.php");
        exit;
    } else {
        echo "Invalid credentials";
    }
}

// Logout Processing
if (basename($_SERVER['PHP_SELF']) == 'logout.php') {
    session_start();
    session_destroy();
    header("Location: login.php");
    exit;
}

// Insert Contact
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['name'])) {
    $name = $_POST['name'];
    $phone = $_POST['phone'];
    
    $sql = "INSERT INTO contacts (name, phone) VALUES (:name, :phone)";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(['name' => $name, 'phone' => $phone]);
    echo "Contact added successfully";
}

// Update Contact
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['id'])) {
    $id = $_POST['id'];
    $name = $_POST['name'];
    $phone = $_POST['phone'];
    
    $sql = "UPDATE contacts SET name = :name, phone = :phone WHERE id = :id";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(['name' => $name, 'phone' => $phone, 'id' => $id]);
    echo "Contact updated successfully";
}
?>
