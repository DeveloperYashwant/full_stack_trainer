<?php
session_start();
if (empty($_SESSION['username'])) {
    session_destroy();
    echo "<script>alert('You need to Login'); window.location.href='index.php';</script>";
    exit();
}
?>


<nav class="navbar navbar-expand-lg navbar-dark">
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
