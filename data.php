<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome to Student Portal</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
        body {
            background: #2c3e50;
            color: white;
            text-align: center;
            font-family: Arial, sans-serif;
        }

        #welcome-page {
            position: fixed;
            width: 100%;
            height: 100vh;
            background: linear-gradient(to right, #1c92d2, #f2fcfe);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            z-index: 10;
            transition: opacity 1s ease-in-out;
        }

        #welcome-page h1 {
            font-size: 50px;
            margin-bottom: 20px;
            animation: fadeIn 2s ease-in-out;
        }

        #enter-btn {
            padding: 15px 30px;
            font-size: 18px;
            font-weight: bold;
            border: none;
            background: #ff9800;
            color: white;
            border-radius: 10px;
            cursor: pointer;
            transition: background 0.3s ease-in-out;
        }

        #enter-btn:hover {
            background: #e68900;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        #main-content {
            display: none;
            opacity: 0;
            animation: fadeIn 1s forwards;
        }
    </style>
</head>

<body>

    <!-- Welcome Animation Page -->
    <div id="welcome-page">
        <h1>Welcome to Student Portal</h1>
        <button id="enter-btn">Professsor Yashwant Ghole</button>
    </div>

    <!-- Main Content Page -->
    <!-- <div id="main-content" class="container mt-5">
        <h2 class="mb-4">Student Portal</h2>
        <div class="btn-group">
            <a href="insert.html" class="btn btn-primary">Admission Details</a>
            <a href="attent.php" class="btn btn-success">Fees Receipt</a>
            <a href="showed.php" class="btn btn-warning">Fees Report</a>
            <a href="check.php" class="btn btn-danger">Fees Progress</a>
            <a href="display.php" class="btn btn-info">Admission Report</a>
        </div>
    </div> -->

    <script>
        $(document).ready(function(){
            $("#enter-btn").click(function(){
                $("#welcome-page").fadeOut(1000, function(){
                    $("#main-content").fadeIn(1000);
                });
            });
        });
    </script>

</body>
</html>
