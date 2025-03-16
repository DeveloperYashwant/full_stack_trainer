<?php
session_start();
if (empty($_SESSION['username'])) {
    session_destroy();
    echo "<script>alert('You need to Login'); window.location.href='index.php';</script>";
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Responsive Navbar with Content</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    
    <style>
        /* Multi-color styling */
        .navbar {
            background: linear-gradient(to right, #ff7e5f, #feb47b, #86a8e7, #7f7fd5);
        }
        .navbar-brand {
            font-size: 24px;
            font-weight: bold;
            color: white !important;
        }
        .navbar-nav .nav-link {
            color: white !important;
            font-weight: 500;
            transition: 0.3s;
        }
        .navbar-nav .nav-link:hover {
            color: #000 !important;
            background-color: rgba(255, 255, 255, 0.3);
            border-radius: 5px;
        }
        .dropdown-menu {
            background: #7f7fd5;
        }
        .dropdown-menu .dropdown-item {
            color: white;
        }
        .dropdown-menu .dropdown-item:hover {
            background: #feb47b;
            color: black;
        }
        .progress-icon {
            font-size: 22px;
            color: white;
            cursor: pointer;
            margin-left: 20px;
            transition: 0.3s;
        }
        .progress-icon:hover {
            color: yellow;
        }
        
        /* iframe for loading content */
        #content-frame {
            width: 100%;
            height: 80vh;
            border: none;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Dashboard</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item"><a class="nav-link" href="data.php" target="content-frame">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="ins.php" target="content-frame">Admission Details</a></li>
                <li class="nav-item"><a class="nav-link" href="attent.php" target="content-frame">Fees Receipt</a></li>
                <li class="nav-item"><a class="nav-link" href="showed.php" target="content-frame">Fees Report</a></li>
                <li class="nav-item"><a class="nav-link" href="check.php" target="content-frame">Fees Progress</a></li>
                <li class="nav-item"><a class="nav-link" href="display.php" target="content-frame">Admission Report</a></li>

                <!-- Dropdown for Actions -->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="actionDropdown" role="button" data-bs-toggle="dropdown">
                        Action
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="regBook.php" target="content-frame">Registered Student</a></li>
                        <li><a class="dropdown-item" href="logout.php">Logout</a></li>
                    </ul>
                </li>
            </ul>

            <!-- Student Progress Report Icon -->
            <span class="fa fa-chart-line progress-icon" onclick="showProgress();"></span>
        </div>
    </div>
</nav>

<!-- Content Frame (Loads selected page) -->
<iframe id="content-frame" name="content-frame" src="data.php"></iframe>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- Optional JavaScript Function -->
<script>
    function showProgress() {
        alert("Showing Progress Report");
    }
</script>

</body>
</html>
